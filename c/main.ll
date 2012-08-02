; ModuleID = 'main.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%0 = type { i64, i64 }
%1 = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %2, %2, %2, i8*, i32, i32, %4* }
%2 = type { i32, %3* }
%3 = type { i32, i32, i32, i32* }
%4 = type { [14 x i8], i32 }
%5 = type { i32, i32, i64* }
%6 = type { i32, i64, i8*, %struct.re_guts* }
%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.anon = type { i64, i32, i64, i64* }
%struct.argspec_struct = type { i8*, i8, %struct.obj_struct, i8 }
%struct.listbuf_struct = type { %struct.obj_struct, %struct.obj_struct }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smpType_struct*, i8* }
%struct.re_guts = type opaque
%struct.smpArray_struct = type { %struct.obj_struct*, i64 }
%struct.smpException_struct = type { i8*, %struct.obj_struct }
%struct.smpFunction_struct = type { i8, i8*, %struct.argspec_struct*, [2 x i8], void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* }
%struct.smpHash_struct = type { %struct.obj_struct*, %struct.obj_struct, i64, i64, i64 }
%struct.smpPair_struct = type { %struct.obj_struct, %struct.obj_struct* }
%struct.smpThrown_struct = type { i8, %struct.obj_struct*, i64 }
%struct.smpTypeError_struct = type { i8*, %struct.obj_struct, %struct.smpType_struct*, %struct.obj_struct }
%struct.smpType_struct = type { i8*, i32, i8, %struct.smpType_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }
%struct.smpregexmatch_struct = type { %0*, i64 }
%struct.smpstrstruct = type { i8*, i64 }
%struct.standardcore_struct = type { %struct.minihash_struct }

@smpType_class = common global %struct.smpType_struct zeroinitializer, align 8
@scope_length = common global i64 0, align 8
@scope_stack = common global %struct.minihash_struct* null, align 8
@.str = private constant [24 x i8] c"ImplementationException\00"
@.str1 = private constant [34 x i8] c"Cannot call an abstract function.\00"
@.str2 = private constant [31 x i8] c"default unimplemented function\00"
@gc_stack_length = common global i64 0, align 8
@gc_add_objectsp = common global i32 0, align 4
@gc_add_next_objectp = common global i32 0, align 4
@gc_activep = common global i32 0, align 4
@gc_runningp = common global i32 0, align 4
@.str3 = private constant [6 x i8] c"Class\00"
@.str4 = private constant [11 x i8] c"adding %s\0A\00"
@.str5 = private constant [78 x i8] c"Garbage collector is disabled. No memory available to allocate a new object.\0A\00"
@.str6 = private constant [39 x i8] c"gc_run() had nonzero return value %d.\0A\00"
@initialized_classesp = common global i32 0, align 4
@.str7 = private constant [54 x i8] c"Not enough memory to initialize the default classes.\0A\00"
@.str8 = private constant [47 x i8] c"No memory available to allocate a new object.\0A\00"
@gc_counter = common global i32 0, align 4
@gc_stack = common global [1024 x %struct.obj_struct] zeroinitializer, align 16
@.str9 = private constant [9 x i8] c"Function\00"
@.str10 = private constant [16 x i8] c"found %lx (%s)\0A\00"
@scope_classes = common global %struct.minihash_struct zeroinitializer, align 8
@.str11 = private constant [63 x i8] c"The object with (key %s and core %lx) is not on the GC stack.\0A\00"
@.str12 = private constant [8 x i8] c"gc_mark\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str13 = private constant [9 x i8] c"key: %s\0A\00"
@.str14 = private constant [2 x i8] c"\0A\00"
@.str15 = private constant [58 x i8] c"Cannot initialize %s while running the garbage collector.\00"
@.str16 = private constant [24 x i8] c"InitializationException\00"
@.str17 = private constant [38 x i8] c"Cannot initialize singleton class %s.\00"
@.str18 = private constant [7 x i8] c"String\00"
@.str19 = private constant [13 x i8] c"compute-hash\00"
@smpType_id_int = common global i32 0, align 4
@.str20 = private constant [6 x i8] c"clear\00"
@smpType_id = common global %struct.smpType_struct zeroinitializer, align 8
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@smpType_id_nil = common global i32 0, align 4
@smpType_id_list = common global i32 0, align 4
@.str21 = private constant [14 x i8] c"ArgumentError\00"
@.str22 = private constant [50 x i8] c"Wrong number of arguments (1 expected, %d found).\00"
@.str23 = private constant [7 x i8] c"equal?\00"
@.str24 = private constant [4 x i8] c"eq?\00"
@.str25 = private constant [7 x i8] c"Thrown\00"
@smpType_id_class = common global i32 0, align 4
@.str26 = private constant [21 x i8] c"UndefinedSymbolError\00"
@.str27 = private constant [41 x i8] c"Class function \22%s\22 is undefined for %s.\00"
@.str28 = private constant [44 x i8] c"Instance function \22%s\22 is undefined for %s.\00"
@.str29 = private constant [29 x i8] c"Function expected, %s found.\00"
@.str30 = private constant [11 x i8] c"<%s 0x%lx>\00"
@.str31 = private constant [5 x i8] c"to_s\00"
@.str32 = private constant [5 x i8] c"self\00"
@smpType_next_id = common global i32 0, align 4
@smpType_ids = common global %struct.minihash_struct zeroinitializer, align 8
@.str33 = private constant [7 x i8] c"Object\00"
@.str34 = private constant [3 x i8] c"ID\00"
@smpType_object = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_function = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_id_fun = common global i32 0, align 4
@.str35 = private constant [5 x i8] c"Atom\00"
@smpType_atom = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_string = common global %struct.smpType_struct zeroinitializer, align 8
@.str36 = private constant [5 x i8] c"Bool\00"
@.str37 = private constant [11 x i8] c"Collection\00"
@smpType_collection = common global %struct.smpType_struct zeroinitializer, align 8
@.str38 = private constant [5 x i8] c"Pair\00"
@smpType_pair = common global %struct.smpType_struct zeroinitializer, align 8
@.str39 = private constant [5 x i8] c"List\00"
@smpType_list = common global %struct.smpType_struct zeroinitializer, align 8
@.str40 = private constant [4 x i8] c"Nil\00"
@smpType_nil = common global %struct.smpType_struct zeroinitializer, align 8
@.str41 = private constant [10 x i8] c"TrueClass\00"
@.str42 = private constant [10 x i8] c"Exception\00"
@smpType_exception = common global %struct.smpType_struct zeroinitializer, align 8
@.str43 = private constant [13 x i8] c"CompileError\00"
@.str44 = private constant [17 x i8] c"RuntimeException\00"
@.str45 = private constant [14 x i8] c"FunctionError\00"
@.str46 = private constant [12 x i8] c"SyntaxError\00"
@.str47 = private constant [10 x i8] c"TypeError\00"
@smpType_thrown = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_id_thrown = common global i32 0, align 4
@.str48 = private constant [3 x i8] c"==\00"
@.str49 = private constant [3 x i8] c"->\00"
@.str50 = private constant [5 x i8] c"cons\00"
@.str51 = private constant [5 x i8] c"eql?\00"
@.str52 = private constant [5 x i8] c"type\00"
@.str53 = private constant [13 x i8] c"types_equal?\00"
@.str54 = private constant [6 x i8] c"write\00"
@.str55 = private constant [4 x i8] c"and\00"
@.str56 = private constant [3 x i8] c"or\00"
@.str57 = private constant [4 x i8] c"xor\00"
@.str58 = private constant [3 x i8] c"&&\00"
@.str59 = private constant [3 x i8] c"||\00"
@smptest_print_successesp = common global i32 0, align 4
@.str60 = private constant [23 x i8] c"success: %s equals %s\0A\00"
@.str61 = private constant [33 x i8] c"failure: %s expected, %s found.\0A\00"
@.str62 = private constant [2 x i8] c"x\00"
@.str63 = private constant [2 x i8] c"y\00"
@.str64 = private constant [2 x i8] c"+\00"
@.str65 = private constant [2 x i8] c"-\00"
@.str66 = private constant [2 x i8] c"*\00"
@.str67 = private constant [2 x i8] c"/\00"
@.str68 = private constant [2 x i8] c"%\00"
@.str69 = private constant [3 x i8] c"<<\00"
@.str70 = private constant [3 x i8] c">>\00"
@.str71 = private constant [2 x i8] c"&\00"
@.str72 = private constant [2 x i8] c"|\00"
@.str73 = private constant [2 x i8] c"^\00"
@.str74 = private constant [6 x i8] c"World\00"
@.str75 = private constant [42 x i8] c"Hello, %w! Mad %s, Wayne's %s, Disney %s.\00"
@.str76 = private constant [60 x i8] c"Hello, World! Mad \22World\22, Wayne's \22World\22, Disney \22World\22.\00"
@.str77 = private constant [30 x i8] c"various types: %d, %f, %x, %o\00"
@.str78 = private constant [8 x i8] c"Integer\00"
@.str79 = private constant [10 x i8] c"make_list\00"
@.str80 = private constant [3 x i8] c"xs\00"
@smpInteger_zero = common global %struct.obj_struct zeroinitializer, align 8
@smpInteger_one = common global %struct.obj_struct zeroinitializer, align 8
@.str81 = private constant [16 x i8] c"not a real type\00"
@.str82 = private constant [16 x i8] c"^[0123456789]+$\00"
@.str83 = private constant [9 x i8] c"09821409\00"
@.str84 = private constant [6 x i8] c"array\00"
@.str85 = private constant [12 x i8] c"What is Pi?\00"
@.str86 = private constant [10 x i8] c"second pi\00"
@.str87 = private constant [8 x i8] c"pi: %s\0A\00"
@.str88 = private constant [5 x i8] c"Card\00"
@.str89 = private constant [21 x i8] c"\0A\0ATests succeeded.\0A\0A\00"
@.str90 = private constant [18 x i8] c"\0A\0ATests failed.\0A\0A\00"
@__stderrp = external global %struct.__sFILE*
@.str91 = private constant [17 x i8] c"Internal Error: \00"
@.str92 = private constant [14 x i8] c"Fatal Error: \00"
@.str93 = private constant [6 x i8] c"Array\00"
@.str94 = private constant [5 x i8] c"add!\00"
@.str95 = private constant [4 x i8] c"map\00"
@.str96 = private constant [26 x i8] c"IndexOutOfBoundsException\00"
@.str97 = private constant [28 x i8] c"Index %ld is out of bounds.\00"
@.str98 = private constant [7 x i8] c"Global\00"
@.str99 = private constant [2 x i8] c"[\00"
@.str100 = private constant [3 x i8] c", \00"
@.str101 = private constant [2 x i8] c"]\00"
@.str102 = private constant [7 x i8] c"(array\00"
@.str103 = private constant [2 x i8] c" \00"
@.str104 = private constant [2 x i8] c")\00"
@.str105 = private constant [5 x i8] c"true\00"
@.str106 = private constant [25 x i8] c"IncompleteTokenException\00"
@.str107 = private constant [18 x i8] c"InternalException\00"
@.str108 = private constant [22 x i8] c"StringFormatException\00"
@smp_stderr = common global %struct.__sFILE* null, align 8
@.str109 = private constant [4 x i8] c"%s\0A\00"
@.str110 = private constant [7 x i8] c"%s: %s\00"
@.str111 = private constant [8 x i8] c"\0A\09from \00"
@.str112 = private constant [28 x i8] c"%s: %s expected, %st found.\00"
@.str113 = private constant [20 x i8] c"%s: unexpected %st.\00"
@.str114 = private constant [1 x i8] zeroinitializer
@smp_mpfr_rnd = common global i32 0, align 4
@smp_mpfr_default_prec = common global i64 0, align 8
@.str115 = private constant [7 x i8] c"Number\00"
@.str116 = private constant [6 x i8] c"Float\00"
@smpType_float = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_id_float = common global i32 0, align 4
@.str117 = private constant [3 x i8] c"**\00"
@.str118 = private constant [3 x i8] c"!=\00"
@.str119 = private constant [2 x i8] c"<\00"
@.str120 = private constant [3 x i8] c"<=\00"
@.str121 = private constant [3 x i8] c">=\00"
@.str122 = private constant [2 x i8] c">\00"
@.str123 = private constant [3 x i8] c"PI\00"
@.str124 = private constant [2 x i8] c"E\00"
@.str125 = private constant [9 x i8] c"%%.%dR*f\00"
@.str126 = private constant [61 x i8] c"Wrong number of arguments in %s::%s (%d expected, %d found).\00"
@.str127 = private constant [42 x i8] c"Unexpected token %s after &rest argument.\00"
@.str128 = private constant [9 x i8] c"&default\00"
@.str129 = private constant [7 x i8] c"&quote\00"
@.str130 = private constant [10 x i8] c"&optional\00"
@.str131 = private constant [6 x i8] c"&rest\00"
@.str132 = private constant [9 x i8] c"&keyword\00"
@.str133 = private constant [5 x i8] c"%s()\00"
@.str134 = private constant [16 x i8] c"<Function: %lx>\00"
@__stdinp = external global %struct.__sFILE*
@smp_stdin = common global %struct.__sFILE* null, align 8
@__stdoutp = external global %struct.__sFILE*
@smp_stdout = common global %struct.__sFILE* null, align 8
@smp_global = common global %struct.obj_struct zeroinitializer, align 8
@smpType_global = common global %struct.smpType_struct zeroinitializer, align 8
@.str135 = private constant [2 x i8] c"!\00"
@.str136 = private constant [2 x i8] c"~\00"
@.str137 = private constant [6 x i8] c"catch\00"
@.str138 = private constant [5 x i8] c"list\00"
@.str139 = private constant [6 x i8] c"print\00"
@.str140 = private constant [7 x i8] c"printf\00"
@.str141 = private constant [8 x i8] c"println\00"
@.str142 = private constant [8 x i8] c"sprintf\00"
@.str143 = private constant [6 x i8] c"throw\00"
@.str144 = private constant [4 x i8] c"nil\00"
@.str145 = private constant [25 x i8] c"catch() not implemented.\00"
@.str146 = private constant [36 x i8] c"name: %st, parents: %st, body: %st\0A\00"
@.str147 = private constant [3 x i8] c"%s\00"
@.str148 = private constant [67 x i8] c"Not enough arguments for formatted output (%d expected, %d found).\00"
@.str149 = private constant [48 x i8] c"Undefined format %s (does not begin with '%%').\00"
@.str150 = private constant [26 x i8] c"Undefined format type %c.\00"
@.str151 = private constant [5 x i8] c"Hash\00"
@.str152 = private constant [34 x i8] c"hash contains?() not implemented.\00"
@.str153 = private constant [6 x i8] c"(hash\00"
@.str154 = private constant [2 x i8] c"(\00"
@smpType_int = common global %struct.smpType_struct zeroinitializer, align 8
@.str155 = private constant [4 x i8] c"mod\00"
@.str156 = private constant [4 x i8] c"car\00"
@.str157 = private constant [4 x i8] c"cdr\00"
@.str158 = private constant [7 x i8] c"empty?\00"
@.str159 = private constant [7 x i8] c"length\00"
@.str160 = private constant [6 x i8] c"(list\00"
@.str161 = private constant [11 x i8] c"ListBuffer\00"
@.str162 = private constant [8 x i8] c"to_list\00"
@.str163 = private constant [8 x i8] c"(%s %s)\00"
@.str164 = private constant [8 x i8] c"(%w %w)\00"
@.str165 = private constant [11 x i8] c"RegexMatch\00"
@smpType_regmatch = common global %struct.smpType_struct zeroinitializer, align 8
@.str166 = private constant [55 x i8] c"Regular expression \22%s\22 had invalid '{...}' construct.\00"
@.str167 = private constant [41 x i8] c"Syntax error in regular expression \22%s\22.\00"
@.str168 = private constant [97 x i8] c"In regular expression \22%s\22, a repetition operator such as '?' or '*' appeared in a bad position.\00"
@.str169 = private constant [66 x i8] c"Regular expression \22%s\22 referred to an invalid collating element.\00"
@.str170 = private constant [69 x i8] c"Regular expression \22%s\22 referred to an invalid character class name.\00"
@.str171 = private constant [40 x i8] c"Regular expression \22%s\22 ended with '\5C'.\00"
@.str172 = private constant [70 x i8] c"Regular expression \22%s\22 had invalid number in the '\5Cdigit' construct.\00"
@.str173 = private constant [56 x i8] c"Regular expression \22%s\22 had unbalanced square brackets.\00"
@.str174 = private constant [52 x i8] c"Regular expression \22%s\22 had unbalanced parentheses.\00"
@.str175 = private constant [53 x i8] c"Regular expression \22%s\22 had unbalanced curly braces.\00"
@.str176 = private constant [84 x i8] c"In regular expression \22%s\22, one of the endpoints in a range expression was invalid.\00"
@.str177 = private constant [59 x i8] c"Ran out of memory while compiling regular expression \22%s\22.\00"
@.str178 = private constant [8 x i8] c"reverse\00"
@.str179 = private constant [7 x i8] c"Symbol\00"
@.str180 = private constant [13 x i8] c"<Thrown: %s>\00"
@.str181 = private constant [38 x i8] c"Undefined function-variable flag %d.\0A\00"
@.str182 = private constant [26 x i8] c"Undefined scope flag %d.\0A\00"
@.str183 = private constant [5 x i8] c"\0A%s\0A\00"
@smpType_id_array = common global i32 0, align 4
@smpType_id_hash = common global i32 0, align 4
@smpType_id_var = common global i32 0, align 4
@_DefaultRuneLocale = external global %1

define i32 @smp_putclass(%struct.smpType_struct* byval %type) nounwind {
  %wrapper = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smpType_struct* @smpType_class)
  %2 = bitcast %struct.obj_struct* %wrapper to i8*
  %3 = getelementptr i8* %2, i32 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 8
  %6 = and i32 %5, -2
  %7 = or i32 %6, 1
  store i32 %7, i32* %4, align 8
  %8 = call i8* @smp_malloc(i64 64)
  %9 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smpType_struct*
  %13 = bitcast %struct.smpType_struct* %12 to i8*
  %14 = bitcast %struct.smpType_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 64, i32 8, i1 false)
  %15 = call i32 @gc_stack_push(%struct.obj_struct* %wrapper)
  %16 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 0
  %17 = load i8** %16, align 8
  %18 = bitcast %struct.obj_struct* %1 to i8*
  %19 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = call i32 @scope_add(i8* %17, %struct.obj_struct* byval %1)
  ret i32 0
}

define void @obj_init(%struct.obj_struct* sret %agg.result, %struct.smpType_struct* %type) nounwind {
  %1 = alloca %struct.smpType_struct*, align 8
  %obj = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %core = alloca %struct.standardcore_struct, align 8
  store %struct.smpType_struct* %type, %struct.smpType_struct** %1, align 8
  %4 = load i32* @gc_runningp, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = load %struct.smpType_struct** %1, align 8
  %8 = getelementptr inbounds %struct.smpType_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([58 x i8]* @.str15, i32 0, i32 0), i8* %9)
  br label %10

; <label>:10                                      ; preds = %6, %0
  %11 = call i8* @smp_malloc(i64 4)
  %12 = bitcast i8* %11 to i32*
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 0
  store i32* %12, i32** %13, align 8
  %14 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 0
  %15 = load i32** %14, align 8
  store i32 0, i32* %15
  %16 = bitcast %struct.obj_struct* %obj to i8*
  %17 = getelementptr i8* %16, i32 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32* %18, align 8
  %20 = and i32 %19, -3
  store i32 %20, i32* %18, align 8
  %21 = bitcast %struct.obj_struct* %obj to i8*
  %22 = getelementptr i8* %21, i32 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32* %23, align 8
  %25 = and i32 %24, -2
  store i32 %25, i32* %23, align 8
  %26 = load %struct.smpType_struct** %1, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  store %struct.smpType_struct* %26, %struct.smpType_struct** %27, align 8
  %28 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  store i8* null, i8** %28, align 8
  %29 = load %struct.smpType_struct** %1, align 8
  %30 = bitcast %struct.smpType_struct* %29 to i8*
  %31 = getelementptr i8* %30, i32 12
  %32 = bitcast i8* %31 to i32*
  %33 = load i32* %32, align 4
  %34 = lshr i32 %33, 2
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 30
  %37 = ashr i32 %36, 30
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %62

; <label>:39                                      ; preds = %10
  %40 = load %struct.smpType_struct** %1, align 8
  %41 = bitcast %struct.smpType_struct* %40 to i8*
  %42 = getelementptr i8* %41, i32 12
  %43 = bitcast i8* %42 to i32*
  %44 = load i32* %43, align 4
  %45 = lshr i32 %44, 1
  %46 = and i32 %45, 1
  %47 = shl i32 %46, 31
  %48 = ashr i32 %47, 31
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

; <label>:50                                      ; preds = %39
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %51 = load %struct.smpType_struct** %1, align 8
  %52 = getelementptr inbounds %struct.smpType_struct* %51, i32 0, i32 0
  %53 = load i8** %52, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([38 x i8]* @.str17, i32 0, i32 0), i8* %53)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %84

; <label>:54                                      ; preds = %39
  %55 = load %struct.smpType_struct** %1, align 8
  %56 = bitcast %struct.smpType_struct* %55 to i8*
  %57 = getelementptr i8* %56, i32 12
  %58 = bitcast i8* %57 to i32*
  %59 = load i32* %58, align 4
  %60 = and i32 %59, -3
  %61 = or i32 %60, 2
  store i32 %61, i32* %58, align 4
  br label %62

; <label>:62                                      ; preds = %54, %10
  %63 = load %struct.smpType_struct** %1, align 8
  %64 = bitcast %struct.smpType_struct* %63 to i8*
  %65 = getelementptr i8* %64, i32 12
  %66 = bitcast i8* %65 to i32*
  %67 = load i32* %66, align 4
  %68 = and i32 %67, 1
  %69 = shl i32 %68, 31
  %70 = ashr i32 %69, 31
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

; <label>:72                                      ; preds = %62
  %73 = getelementptr inbounds %struct.standardcore_struct* %core, i32 0, i32 0
  call void @minihash_init(%struct.minihash_struct* sret %73)
  %74 = call i8* @smp_malloc(i64 32)
  %75 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %77 = load i8** %76, align 8
  %78 = bitcast i8* %77 to %struct.standardcore_struct*
  %79 = bitcast %struct.standardcore_struct* %78 to i8*
  %80 = bitcast %struct.standardcore_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  br label %81

; <label>:81                                      ; preds = %72, %62
  %82 = bitcast %struct.obj_struct* %agg.result to i8*
  %83 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 32, i32 8, i1 false)
  br label %84

; <label>:84                                      ; preds = %81, %50
  ret void
}

define i8* @smp_malloc(i64 %bytes) nounwind {
  %1 = alloca i64, align 8
  store i64 %bytes, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call i8* @malloc(i64 %2)
  ret i8* %3
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i32 @gc_stack_push(%struct.obj_struct* %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %res = alloca i32, align 4
  %res1 = alloca i32, align 4
  store %struct.obj_struct* %obj, %struct.obj_struct** %2, align 8
  %3 = load %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 2
  %5 = load %struct.smpType_struct** %4, align 8
  %6 = getelementptr inbounds %struct.smpType_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %37

; <label>:9                                       ; preds = %0
  %10 = load %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %10, i32 0, i32 2
  %12 = load %struct.smpType_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smpType_struct* %12, i32 0, i32 0
  %14 = load i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

; <label>:17                                      ; preds = %9
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 3
  %20 = load i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.smpType_struct*
  %22 = getelementptr inbounds %struct.smpType_struct* %21, i32 0, i32 0
  %23 = load i8** %22, align 8
  %24 = getelementptr inbounds i8* %23, i64 0
  %25 = load i8* %24
  %26 = sext i8 %25 to i32
  %27 = call i32 @isalpha(i32 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

; <label>:29                                      ; preds = %17
  %30 = load %struct.obj_struct** %2, align 8
  %31 = getelementptr inbounds %struct.obj_struct* %30, i32 0, i32 3
  %32 = load i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.smpType_struct*
  %34 = getelementptr inbounds %struct.smpType_struct* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i8* %35)
  br label %37

; <label>:37                                      ; preds = %29, %17, %9, %0
  %38 = load i32* @gc_add_objectsp, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %37
  store i32 0, i32* %1
  br label %98

; <label>:41                                      ; preds = %37
  %42 = load i32* @gc_add_next_objectp, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %41
  store i32 1, i32* @gc_add_next_objectp, align 4
  store i32 0, i32* %1
  br label %98

; <label>:45                                      ; preds = %41
  %46 = load i64* @gc_stack_length, align 8
  %47 = icmp uge i64 %46, 1024
  br i1 %47, label %48, label %68

; <label>:48                                      ; preds = %45
  %49 = load i32* @gc_activep, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %48
  call void (i8*, ...)* @fatal_error(i8* getelementptr inbounds ([78 x i8]* @.str5, i32 0, i32 0))
  br label %52

; <label>:52                                      ; preds = %51, %48
  %53 = call i32 @gc_run()
  store i32 %53, i32* %res, align 4
  %54 = load i32* %res, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

; <label>:56                                      ; preds = %52
  %57 = load i32* %res, align 4
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([39 x i8]* @.str6, i32 0, i32 0), i32 %57)
  br label %58

; <label>:58                                      ; preds = %56, %52
  %59 = load i64* @gc_stack_length, align 8
  %60 = icmp uge i64 %59, 1024
  br i1 %60, label %61, label %67

; <label>:61                                      ; preds = %58
  %62 = load i32* @initialized_classesp, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %61
  call void (i8*, ...)* @fatal_error(i8* getelementptr inbounds ([54 x i8]* @.str7, i32 0, i32 0))
  br label %66

; <label>:65                                      ; preds = %61
  call void (i8*, ...)* @fatal_error(i8* getelementptr inbounds ([47 x i8]* @.str8, i32 0, i32 0))
  br label %66

; <label>:66                                      ; preds = %65, %64
  br label %67

; <label>:67                                      ; preds = %66, %58
  br label %82

; <label>:68                                      ; preds = %45
  %69 = load i32* @gc_counter, align 4
  %70 = icmp eq i32 %69, 256
  br i1 %70, label %71, label %81

; <label>:71                                      ; preds = %68
  %72 = load i32* @gc_activep, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

; <label>:74                                      ; preds = %71
  %75 = call i32 @gc_run()
  store i32 %75, i32* %res1, align 4
  %76 = load i32* %res1, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %74
  %79 = load i32* %res1, align 4
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([39 x i8]* @.str6, i32 0, i32 0), i32 %79)
  br label %80

; <label>:80                                      ; preds = %78, %74
  store i32 0, i32* @gc_counter, align 4
  br label %81

; <label>:81                                      ; preds = %80, %71, %68
  br label %82

; <label>:82                                      ; preds = %81, %67
  %83 = load i64* @gc_stack_length, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* @gc_stack_length, align 8
  %85 = getelementptr inbounds [1024 x %struct.obj_struct]* @gc_stack, i32 0, i64 %83
  %86 = load %struct.obj_struct** %2, align 8
  %87 = bitcast %struct.obj_struct* %85 to i8*
  %88 = bitcast %struct.obj_struct* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 32, i32 8, i1 false)
  %89 = load %struct.obj_struct** %2, align 8
  %90 = bitcast %struct.obj_struct* %89 to i8*
  %91 = getelementptr i8* %90, i32 8
  %92 = bitcast i8* %91 to i32*
  %93 = load i32* %92, align 8
  %94 = and i32 %93, -3
  %95 = or i32 %94, 2
  store i32 %95, i32* %92, align 8
  %96 = load i32* @gc_counter, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @gc_counter, align 4
  store i32 0, i32* %1
  br label %98

; <label>:98                                      ; preds = %82, %44, %40
  %99 = load i32* %1
  ret i32 %99
}

define i32 @scope_add(i8* %name, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %ret = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  store i8* %name, i8** %2, align 8
  %4 = call i32 @gc_stack_push(%struct.obj_struct* %obj)
  store i32 %4, i32* %ret, align 4
  %5 = load i32* %ret, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = load i32* %ret, align 4
  store i32 %8, i32* %1
  br label %24

; <label>:9                                       ; preds = %0
  %10 = load i64* @scope_length, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  br label %18

; <label>:13                                      ; preds = %9
  %14 = load i64* @scope_length, align 8
  %15 = sub i64 %14, 1
  %16 = load %struct.minihash_struct** @scope_stack, align 8
  %17 = getelementptr inbounds %struct.minihash_struct* %16, i64 %15
  br label %18

; <label>:18                                      ; preds = %13, %12
  %19 = phi %struct.minihash_struct* [ null, %12 ], [ %17, %13 ]
  %20 = load i8** %2, align 8
  %21 = bitcast %struct.obj_struct* %3 to i8*
  %22 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = call i32 @minihash_add(%struct.minihash_struct* %19, i8* %20, %struct.obj_struct* byval %3)
  store i32 %23, i32* %1
  br label %24

; <label>:24                                      ; preds = %18, %7
  %25 = load i32* %1
  ret i32 %25
}

define void @smp_getclass(%struct.obj_struct* sret %agg.result, i8* %name) nounwind {
  %1 = alloca i8*, align 8
  store i8* %name, i8** %1, align 8
  %2 = load i64* @scope_length, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %10

; <label>:5                                       ; preds = %0
  %6 = load i64* @scope_length, align 8
  %7 = sub i64 %6, 1
  %8 = load %struct.minihash_struct** @scope_stack, align 8
  %9 = getelementptr inbounds %struct.minihash_struct* %8, i64 %7
  br label %10

; <label>:10                                      ; preds = %5, %4
  %11 = phi %struct.minihash_struct* [ null, %4 ], [ %9, %5 ]
  %12 = load i8** %1, align 8
  call void @minihash_get(%struct.obj_struct* sret %agg.result, %struct.minihash_struct* %11, i8* %12)
  ret void
}

define void @minihash_get(%struct.obj_struct* sret %agg.result, %struct.minihash_struct* %hash, i8* %key) nounwind {
  %1 = alloca %struct.minihash_struct*, align 8
  %2 = alloca i8*, align 8
  %index = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %1, align 8
  store i8* %key, i8** %2, align 8
  %3 = load %struct.minihash_struct** %1, align 8
  %4 = icmp ne %struct.minihash_struct* %3, null
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load %struct.minihash_struct** %1, align 8
  %7 = getelementptr inbounds %struct.minihash_struct* %6, i32 0, i32 0
  %8 = load %struct.miniarray_struct** %7, align 8
  %9 = icmp ne %struct.miniarray_struct* %8, null
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %5, %0
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %79

; <label>:12                                      ; preds = %5
  %13 = load i8** %2, align 8
  %14 = call i32 @minihash_function(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = load %struct.minihash_struct** %1, align 8
  %17 = getelementptr inbounds %struct.minihash_struct* %16, i32 0, i32 1
  %18 = load i64* %17, align 8
  %19 = urem i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %index, align 4
  %21 = load i32* %index, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.minihash_struct** %1, align 8
  %24 = getelementptr inbounds %struct.minihash_struct* %23, i32 0, i32 0
  %25 = load %struct.miniarray_struct** %24, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i64 %22
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i32 0, i32 0
  %28 = load %struct.minipair_struct** %27, align 8
  %29 = icmp ne %struct.minipair_struct* %28, null
  br i1 %29, label %30, label %77

; <label>:30                                      ; preds = %12
  store i64 0, i64* %i, align 8
  br label %31

; <label>:31                                      ; preds = %73, %30
  %32 = load i64* %i, align 8
  %33 = load i32* %index, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.minihash_struct** %1, align 8
  %36 = getelementptr inbounds %struct.minihash_struct* %35, i32 0, i32 0
  %37 = load %struct.miniarray_struct** %36, align 8
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i64 %34
  %39 = getelementptr inbounds %struct.miniarray_struct* %38, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = icmp ult i64 %32, %40
  br i1 %41, label %42, label %76

; <label>:42                                      ; preds = %31
  %43 = load i64* %i, align 8
  %44 = load i32* %index, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.minihash_struct** %1, align 8
  %47 = getelementptr inbounds %struct.minihash_struct* %46, i32 0, i32 0
  %48 = load %struct.miniarray_struct** %47, align 8
  %49 = getelementptr inbounds %struct.miniarray_struct* %48, i64 %45
  %50 = getelementptr inbounds %struct.miniarray_struct* %49, i32 0, i32 0
  %51 = load %struct.minipair_struct** %50, align 8
  %52 = getelementptr inbounds %struct.minipair_struct* %51, i64 %43
  %53 = getelementptr inbounds %struct.minipair_struct* %52, i32 0, i32 0
  %54 = load i8** %53, align 8
  %55 = load i8** %2, align 8
  %56 = call i32 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %72

; <label>:58                                      ; preds = %42
  %59 = load i64* %i, align 8
  %60 = load i32* %index, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.minihash_struct** %1, align 8
  %63 = getelementptr inbounds %struct.minihash_struct* %62, i32 0, i32 0
  %64 = load %struct.miniarray_struct** %63, align 8
  %65 = getelementptr inbounds %struct.miniarray_struct* %64, i64 %61
  %66 = getelementptr inbounds %struct.miniarray_struct* %65, i32 0, i32 0
  %67 = load %struct.minipair_struct** %66, align 8
  %68 = getelementptr inbounds %struct.minipair_struct* %67, i64 %59
  %69 = getelementptr inbounds %struct.minipair_struct* %68, i32 0, i32 1
  %70 = bitcast %struct.obj_struct* %agg.result to i8*
  %71 = bitcast %struct.obj_struct* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 32, i32 8, i1 false)
  br label %79

; <label>:72                                      ; preds = %42
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i64* %i, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %i, align 8
  br label %31

; <label>:76                                      ; preds = %31
  br label %77

; <label>:77                                      ; preds = %76, %12
  %78 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %79

; <label>:79                                      ; preds = %77, %58, %10
  ret void
}

define void @smp_abstract_function(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0))
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0))
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %exc) nounwind {
  %thrown = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = bitcast %struct.obj_struct* %1 to i8*
  %3 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @smpThrown_init(%struct.obj_struct* sret %thrown, i32 0, %struct.obj_struct* byval %1)
  %4 = bitcast %struct.obj_struct* %agg.result to i8*
  %5 = bitcast %struct.obj_struct* %thrown to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  ret void
}

define void @smpException_init_fmt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i8* %fmt, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %ap1 = alloca [1 x %struct.__va_list_tag], align 8
  store i8* %fmt, i8** %1, align 8
  %3 = load i32* @gc_runningp, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %17

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct.__sFILE** @__stderrp, align 8
  %9 = load i8** %1, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %11 = call i32 @vfprintf(%struct.__sFILE* %8, i8* %9, %struct.__va_list_tag* %10)
  %12 = load %struct.__sFILE** @__stderrp, align 8
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %33

; <label>:17                                      ; preds = %0
  %18 = bitcast %struct.obj_struct* %2 to i8*
  %19 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  call void @smpException_init(%struct.obj_struct* sret %res, %struct.obj_struct* byval %2)
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %21 = bitcast %struct.__va_list_tag* %20 to i8*
  call void @llvm.va_start(i8* %21)
  %22 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.minipair_struct*
  %25 = getelementptr inbounds %struct.minipair_struct* %24, i32 0, i32 0
  %26 = load i8** %1, align 8
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %28 = call i32 @vasprintf(i8** %25, i8* %26, %struct.__va_list_tag* %27)
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %30 = bitcast %struct.__va_list_tag* %29 to i8*
  call void @llvm.va_end(i8* %30)
  %31 = bitcast %struct.obj_struct* %agg.result to i8*
  %32 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  br label %33

; <label>:33                                      ; preds = %17, %5
  ret void
}

define void @smp_unimplemented_function(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0))
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0))
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define i32 @gc_init() nounwind {
  store i64 0, i64* @gc_stack_length, align 8
  store i32 1, i32* @gc_add_objectsp, align 4
  store i32 1, i32* @gc_add_next_objectp, align 4
  store i32 1, i32* @gc_activep, align 4
  store i32 0, i32* @gc_runningp, align 4
  ret i32 0
}

declare i32 @strcmp(i8*, i8*)

define internal i32 @isalpha(i32 %_c) nounwind inlinehint {
  %1 = alloca i32, align 4
  store i32 %_c, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call i32 @__istype(i32 %2, i64 256)
  ret i32 %3
}

declare i32 @printf(i8*, ...)

define void @fatal_error(i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 8
  %intentional_crash = alloca i32*, align 8
  store i8* %format, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = load %struct.__sFILE** @__stderrp, align 8
  %5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([14 x i8]* @.str92, i32 0, i32 0))
  %6 = load %struct.__sFILE** @__stderrp, align 8
  %7 = load i8** %1, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %9 = call i32 @vfprintf(%struct.__sFILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %10 = load %struct.__sFILE** @__stderrp, align 8
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  store i32* null, i32** %intentional_crash, align 8
  %14 = load i32** %intentional_crash, align 8
  store i32 1, i32* %14
  ret void
}

define void @internal_error(i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 8
  %intentional_crash = alloca i32*, align 8
  store i8* %format, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = load %struct.__sFILE** @__stderrp, align 8
  %5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([17 x i8]* @.str91, i32 0, i32 0))
  %6 = load %struct.__sFILE** @__stderrp, align 8
  %7 = load i8** %1, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %9 = call i32 @vfprintf(%struct.__sFILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %10 = load %struct.__sFILE** @__stderrp, align 8
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  store i32* null, i32** %intentional_crash, align 8
  %14 = load i32** %intentional_crash, align 8
  store i32 1, i32* %14
  ret void
}

define i32 @gc_run() nounwind {
  %1 = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 1, i32* @gc_runningp, align 4
  %2 = call i32 @gc_mark()
  store i32 %2, i32* %res, align 4
  %3 = load i32* %res, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32* %res, align 4
  store i32 %6, i32* %1
  br label %10

; <label>:7                                       ; preds = %0
  %8 = call i32 @gc_sweep()
  store i32 %8, i32* %res, align 4
  store i32 0, i32* @gc_runningp, align 4
  %9 = load i32* %res, align 4
  store i32 %9, i32* %1
  br label %10

; <label>:10                                      ; preds = %7, %5
  %11 = load i32* %1
  ret i32 %11
}

define i32 @mh_print_funs(i8* %key, %struct.obj_struct* byval %val) nounwind {
  %1 = alloca i8*, align 8
  store i8* %key, i8** %1, align 8
  %2 = getelementptr inbounds %struct.obj_struct* %val, i32 0, i32 2
  %3 = load %struct.smpType_struct** %2, align 8
  %4 = getelementptr inbounds %struct.smpType_struct* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.obj_struct* %val, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.smpFunction_struct*
  %12 = getelementptr inbounds %struct.smpFunction_struct* %11, i32 0, i32 4
  %13 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %12, align 8
  %14 = ptrtoint void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %13 to i64
  %15 = load i8** %1, align 8
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i64 %14, i8* %15)
  br label %17

; <label>:17                                      ; preds = %8, %0
  ret i32 0
}

define i32 @gc_mark() nounwind {
  %res = alloca i32, align 4
  %i = alloca i64, align 8
  %1 = call i32 @minihash_each(%struct.minihash_struct* @scope_classes, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  store i32 %1, i32* %res, align 4
  store i64 0, i64* %i, align 8
  br label %2

; <label>:2                                       ; preds = %11, %0
  %3 = load i64* %i, align 8
  %4 = load i64* @scope_length, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %2
  %7 = load i64* %i, align 8
  %8 = load %struct.minihash_struct** @scope_stack, align 8
  %9 = getelementptr inbounds %struct.minihash_struct* %8, i64 %7
  %10 = call i32 @minihash_each(%struct.minihash_struct* %9, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  store i32 %10, i32* %res, align 4
  br label %11

; <label>:11                                      ; preds = %6
  %12 = load i64* %i, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %i, align 8
  br label %2

; <label>:14                                      ; preds = %2
  ret i32 0
}

define i32 @minihash_each(%struct.minihash_struct* %hash, i32 (i8*, %struct.obj_struct*)* %fun) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minihash_struct*, align 8
  %3 = alloca i32 (i8*, %struct.obj_struct*)*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %res = alloca i32, align 4
  %4 = alloca %struct.obj_struct, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  store i32 (i8*, %struct.obj_struct*)* %fun, i32 (i8*, %struct.obj_struct*)** %3, align 8
  %5 = load %struct.minihash_struct** %2, align 8
  %6 = getelementptr inbounds %struct.minihash_struct* %5, i32 0, i32 0
  %7 = load %struct.miniarray_struct** %6, align 8
  %8 = icmp ne %struct.miniarray_struct* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = load %struct.minihash_struct** %2, align 8
  %11 = getelementptr inbounds %struct.minihash_struct* %10, i32 0, i32 3
  %12 = load i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9, %0
  store i32 0, i32* %1
  br label %82

; <label>:15                                      ; preds = %9
  store i64 0, i64* %i, align 8
  br label %16

; <label>:16                                      ; preds = %78, %15
  %17 = load i64* %i, align 8
  %18 = load %struct.minihash_struct** %2, align 8
  %19 = getelementptr inbounds %struct.minihash_struct* %18, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %81

; <label>:22                                      ; preds = %16
  %23 = load i64* %i, align 8
  %24 = load %struct.minihash_struct** %2, align 8
  %25 = getelementptr inbounds %struct.minihash_struct* %24, i32 0, i32 0
  %26 = load %struct.miniarray_struct** %25, align 8
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i64 %23
  %28 = getelementptr inbounds %struct.miniarray_struct* %27, i32 0, i32 0
  %29 = load %struct.minipair_struct** %28, align 8
  %30 = icmp ne %struct.minipair_struct* %29, null
  br i1 %30, label %31, label %77

; <label>:31                                      ; preds = %22
  store i64 0, i64* %j, align 8
  br label %32

; <label>:32                                      ; preds = %73, %31
  %33 = load i64* %j, align 8
  %34 = load i64* %i, align 8
  %35 = load %struct.minihash_struct** %2, align 8
  %36 = getelementptr inbounds %struct.minihash_struct* %35, i32 0, i32 0
  %37 = load %struct.miniarray_struct** %36, align 8
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i64 %34
  %39 = getelementptr inbounds %struct.miniarray_struct* %38, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = icmp ult i64 %33, %40
  br i1 %41, label %42, label %76

; <label>:42                                      ; preds = %32
  %43 = load i32 (i8*, %struct.obj_struct*)** %3, align 8
  %44 = load i64* %j, align 8
  %45 = load i64* %i, align 8
  %46 = load %struct.minihash_struct** %2, align 8
  %47 = getelementptr inbounds %struct.minihash_struct* %46, i32 0, i32 0
  %48 = load %struct.miniarray_struct** %47, align 8
  %49 = getelementptr inbounds %struct.miniarray_struct* %48, i64 %45
  %50 = getelementptr inbounds %struct.miniarray_struct* %49, i32 0, i32 0
  %51 = load %struct.minipair_struct** %50, align 8
  %52 = getelementptr inbounds %struct.minipair_struct* %51, i64 %44
  %53 = getelementptr inbounds %struct.minipair_struct* %52, i32 0, i32 0
  %54 = load i8** %53, align 8
  %55 = load i64* %j, align 8
  %56 = load i64* %i, align 8
  %57 = load %struct.minihash_struct** %2, align 8
  %58 = getelementptr inbounds %struct.minihash_struct* %57, i32 0, i32 0
  %59 = load %struct.miniarray_struct** %58, align 8
  %60 = getelementptr inbounds %struct.miniarray_struct* %59, i64 %56
  %61 = getelementptr inbounds %struct.miniarray_struct* %60, i32 0, i32 0
  %62 = load %struct.minipair_struct** %61, align 8
  %63 = getelementptr inbounds %struct.minipair_struct* %62, i64 %55
  %64 = getelementptr inbounds %struct.minipair_struct* %63, i32 0, i32 1
  %65 = bitcast %struct.obj_struct* %4 to i8*
  %66 = bitcast %struct.obj_struct* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 32, i32 8, i1 false)
  %67 = call i32 %43(i8* %54, %struct.obj_struct* byval %4)
  store i32 %67, i32* %res, align 4
  %68 = load i32* %res, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %42
  %71 = load i32* %res, align 4
  store i32 %71, i32* %1
  br label %82

; <label>:72                                      ; preds = %42
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i64* %j, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %j, align 8
  br label %32

; <label>:76                                      ; preds = %32
  br label %77

; <label>:77                                      ; preds = %76, %22
  br label %78

; <label>:78                                      ; preds = %77
  %79 = load i64* %i, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %i, align 8
  br label %16

; <label>:81                                      ; preds = %16
  store i32 0, i32* %1
  br label %82

; <label>:82                                      ; preds = %81, %70, %14
  %83 = load i32* %1
  ret i32 %83
}

define i32 @gc_mark_recursive(i8* %key, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i8* %key, i8** %2, align 8
  %5 = bitcast %struct.obj_struct* %obj to i8*
  %6 = getelementptr i8* %5, i32 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32* %7, align 8
  %9 = lshr i32 %8, 1
  %10 = and i32 %9, 1
  %11 = shl i32 %10, 31
  %12 = ashr i32 %11, 31
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

; <label>:14                                      ; preds = %0
  %15 = load i8** %2, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %17 = load i8** %16, align 8
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([63 x i8]* @.str11, i32 0, i32 0), i8* %15, i8* %17)
  br label %18

; <label>:18                                      ; preds = %14, %0
  %19 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 0
  %20 = load i32** %19, align 8
  %21 = load i32* %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  store i32 0, i32* %1
  br label %29

; <label>:24                                      ; preds = %18
  %25 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 0
  %26 = load i32** %25, align 8
  store i32 1, i32* %26
  %27 = bitcast %struct.obj_struct* %3 to i8*
  %28 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  store i32 0, i32* %1
  br label %29

; <label>:29                                      ; preds = %24, %23
  %30 = load i32* %1
  ret i32 %30
}

define void @smpObject_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %name, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %fun = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i8* %name, i8** %1, align 8
  store i32 %argc, i32* %2, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %3, align 8
  %7 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %8 = bitcast %struct.obj_struct* %4 to i8*
  %9 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load i8** %1, align 8
  call void @smpObject_get_fun(%struct.obj_struct* sret %fun, %struct.obj_struct* byval %4, i8* %10)
  %11 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %12 = load %struct.smpType_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smpType_struct* %12, i32 0, i32 0
  %14 = load i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %0
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  %19 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  br label %29

; <label>:20                                      ; preds = %0
  %21 = bitcast %struct.obj_struct* %5 to i8*
  %22 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = bitcast %struct.obj_struct* %6 to i8*
  %24 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = load i32* %2, align 4
  %26 = load %struct.obj_struct** %3, align 8
  call void @smpFunction_call(%struct.obj_struct* sret %res, %struct.obj_struct* byval %5, %struct.obj_struct* byval %6, i32 %25, %struct.obj_struct* %26)
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  %28 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  br label %29

; <label>:29                                      ; preds = %20, %17
  ret void
}

define i32 @gc_sweep() nounwind {
  %1 = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %gc_old_stack_length = alloca i64, align 8
  %2 = alloca i8*
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca i32
  store i64 0, i64* %j, align 8
  %5 = load i64* @gc_stack_length, align 8
  store i64 %5, i64* %gc_old_stack_length, align 8
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2
  %7 = load i64* %gc_old_stack_length, align 8
  %8 = mul i64 32, %7
  %9 = alloca i8, i64 %8, align 16
  %10 = bitcast i8* %9 to %struct.obj_struct*
  %11 = bitcast %struct.obj_struct* %10 to i8*
  %12 = call i64 @llvm.objectsize.i64(i8* %11, i1 false)
  %13 = icmp ne i64 %12, -1
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %10 to i8*
  %16 = bitcast %struct.obj_struct* %10 to i8*
  %17 = call i64 @llvm.objectsize.i64(i8* %16, i1 false)
  %18 = call i8* @__memcpy_chk(i8* %15, i8* bitcast ([1024 x %struct.obj_struct]* @gc_stack to i8*), i64 %8, i64 %17)
  br label %22

; <label>:19                                      ; preds = %0
  %20 = bitcast %struct.obj_struct* %10 to i8*
  %21 = call i8* @__inline_memcpy_chk(i8* %20, i8* bitcast ([1024 x %struct.obj_struct]* @gc_stack to i8*), i64 %8)
  br label %22

; <label>:22                                      ; preds = %19, %14
  %23 = phi i8* [ %18, %14 ], [ %21, %19 ]
  store i64 0, i64* %i, align 8
  br label %24

; <label>:24                                      ; preds = %47, %22
  %25 = load i64* %i, align 8
  %26 = load i64* %gc_old_stack_length, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %50

; <label>:28                                      ; preds = %24
  %29 = load i64* %i, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %10, i64 %29
  %31 = getelementptr inbounds %struct.obj_struct* %30, i32 0, i32 0
  %32 = load i32** %31, align 8
  %33 = load i32* %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

; <label>:35                                      ; preds = %28
  %36 = load i64* %j, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %j, align 8
  %38 = getelementptr inbounds [1024 x %struct.obj_struct]* @gc_stack, i32 0, i64 %36
  %39 = load i64* %i, align 8
  %40 = getelementptr inbounds %struct.obj_struct* %10, i64 %39
  %41 = bitcast %struct.obj_struct* %38 to i8*
  %42 = bitcast %struct.obj_struct* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  br label %46

; <label>:43                                      ; preds = %28
  %44 = load i64* %i, align 8
  %45 = getelementptr inbounds %struct.obj_struct* %10, i64 %44
  call void @obj_clear(%struct.obj_struct* sret %3, %struct.obj_struct* %45)
  br label %46

; <label>:46                                      ; preds = %43, %35
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i64* %i, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %i, align 8
  br label %24

; <label>:50                                      ; preds = %24
  %51 = load i64* %j, align 8
  store i64 %51, i64* @gc_stack_length, align 8
  store i64 0, i64* %i, align 8
  br label %52

; <label>:52                                      ; preds = %68, %50
  %53 = load i64* %i, align 8
  %54 = load i64* %gc_old_stack_length, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %71

; <label>:56                                      ; preds = %52
  %57 = load i64* %i, align 8
  %58 = getelementptr inbounds %struct.obj_struct* %10, i64 %57
  %59 = getelementptr inbounds %struct.obj_struct* %58, i32 0, i32 0
  %60 = load i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

; <label>:62                                      ; preds = %56
  %63 = load i64* %i, align 8
  %64 = getelementptr inbounds %struct.obj_struct* %10, i64 %63
  %65 = getelementptr inbounds %struct.obj_struct* %64, i32 0, i32 0
  %66 = load i32** %65, align 8
  store i32 0, i32* %66
  br label %67

; <label>:67                                      ; preds = %62, %56
  br label %68

; <label>:68                                      ; preds = %67
  %69 = load i64* %i, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %i, align 8
  br label %52

; <label>:71                                      ; preds = %52
  store i32 0, i32* %1
  store i32 1, i32* %4
  %72 = load i8** %2
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32* %1
  ret i32 %73
}

declare i8* @llvm.stacksave() nounwind

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

define void @obj_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %obj) nounwind {
  %1 = alloca %struct.obj_struct*, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %1, align 8
  %4 = load %struct.obj_struct** %1, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %6 = load %struct.smpType_struct** %5, align 8
  %7 = bitcast %struct.smpType_struct* %6 to i8*
  %8 = getelementptr i8* %7, i32 12
  %9 = bitcast i8* %8 to i32*
  %10 = load i32* %9, align 4
  %11 = lshr i32 %10, 2
  %12 = and i32 %11, 3
  %13 = shl i32 %12, 30
  %14 = ashr i32 %13, 30
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %38

; <label>:18                                      ; preds = %0
  %19 = load %struct.obj_struct** %1, align 8
  %20 = bitcast %struct.obj_struct* %2 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %3, %struct.obj_struct* byval %2, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %22 = load %struct.obj_struct** %1, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i32 0, i32 0
  %24 = load i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  call void @smp_free(i8* %25)
  %26 = load %struct.obj_struct** %1, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  call void @smp_free(i8* %28)
  %29 = load %struct.obj_struct** %1, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %29, i32 0, i32 2
  store %struct.smpType_struct* null, %struct.smpType_struct** %30, align 8
  %31 = load %struct.obj_struct** %1, align 8
  %32 = getelementptr inbounds %struct.obj_struct* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.obj_struct** %1, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i32 0, i32 3
  store i8* null, i8** %34, align 8
  %35 = load %struct.obj_struct** %1, align 8
  %36 = bitcast %struct.obj_struct* %agg.result to i8*
  %37 = bitcast %struct.obj_struct* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  br label %38

; <label>:38                                      ; preds = %18, %16
  ret void
}

declare void @llvm.stackrestore(i8*) nounwind

define void @minihash_init(%struct.minihash_struct* sret %agg.result) nounwind {
  call void @minihash_init_capacity(%struct.minihash_struct* sret %agg.result, i64 10)
  ret void
}

define void @minihash_init_capacity(%struct.minihash_struct* sret %agg.result, i64 %capacity) nounwind {
  %1 = alloca i64, align 8
  %hash = alloca %struct.minihash_struct, align 8
  store i64 %capacity, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  store i64 %2, i64* %3, align 8
  %4 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  %5 = load i64* %4, align 8
  %6 = mul i64 16, %5
  %7 = call i8* @smp_malloc(i64 %6)
  %8 = bitcast i8* %7 to %struct.miniarray_struct*
  %9 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  store %struct.miniarray_struct* %8, %struct.miniarray_struct** %9, align 8
  %10 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %11 = load %struct.miniarray_struct** %10, align 8
  %12 = bitcast %struct.miniarray_struct* %11 to i8*
  %13 = call i64 @llvm.objectsize.i64(i8* %12, i1 false)
  %14 = icmp ne i64 %13, -1
  br i1 %14, label %15, label %27

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %17 = load %struct.miniarray_struct** %16, align 8
  %18 = bitcast %struct.miniarray_struct* %17 to i8*
  %19 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = mul i64 16, %20
  %22 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %23 = load %struct.miniarray_struct** %22, align 8
  %24 = bitcast %struct.miniarray_struct* %23 to i8*
  %25 = call i64 @llvm.objectsize.i64(i8* %24, i1 false)
  %26 = call i8* @__memset_chk(i8* %18, i32 0, i64 %21, i64 %25)
  br label %35

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %29 = load %struct.miniarray_struct** %28, align 8
  %30 = bitcast %struct.miniarray_struct* %29 to i8*
  %31 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  %32 = load i64* %31, align 8
  %33 = mul i64 16, %32
  %34 = call i8* @__inline_memset_chk(i8* %30, i32 0, i64 %33)
  br label %35

; <label>:35                                      ; preds = %27, %15
  %36 = phi i8* [ %26, %15 ], [ %34, %27 ]
  %37 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = bitcast %struct.minihash_struct* %agg.result to i8*
  %40 = bitcast %struct.minihash_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  ret void
}

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

define i32 @minihash_clear(%struct.minihash_struct* %hash) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minihash_struct*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  %3 = load %struct.minihash_struct** %2, align 8
  %4 = getelementptr inbounds %struct.minihash_struct* %3, i32 0, i32 0
  %5 = load %struct.miniarray_struct** %4, align 8
  %6 = icmp ne %struct.miniarray_struct* %5, null
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1
  br label %94

; <label>:8                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %9

; <label>:9                                       ; preds = %80, %8
  %10 = load i64* %i, align 8
  %11 = load %struct.minihash_struct** %2, align 8
  %12 = getelementptr inbounds %struct.minihash_struct* %11, i32 0, i32 1
  %13 = load i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %83

; <label>:15                                      ; preds = %9
  %16 = load i64* %i, align 8
  %17 = load %struct.minihash_struct** %2, align 8
  %18 = getelementptr inbounds %struct.minihash_struct* %17, i32 0, i32 0
  %19 = load %struct.miniarray_struct** %18, align 8
  %20 = getelementptr inbounds %struct.miniarray_struct* %19, i64 %16
  %21 = getelementptr inbounds %struct.miniarray_struct* %20, i32 0, i32 0
  %22 = load %struct.minipair_struct** %21, align 8
  %23 = icmp ne %struct.minipair_struct* %22, null
  br i1 %23, label %24, label %79

; <label>:24                                      ; preds = %15
  store i64 0, i64* %j, align 8
  br label %25

; <label>:25                                      ; preds = %61, %24
  %26 = load i64* %j, align 8
  %27 = load i64* %i, align 8
  %28 = load %struct.minihash_struct** %2, align 8
  %29 = getelementptr inbounds %struct.minihash_struct* %28, i32 0, i32 0
  %30 = load %struct.miniarray_struct** %29, align 8
  %31 = getelementptr inbounds %struct.miniarray_struct* %30, i64 %27
  %32 = getelementptr inbounds %struct.miniarray_struct* %31, i32 0, i32 1
  %33 = load i64* %32, align 8
  %34 = icmp ult i64 %26, %33
  br i1 %34, label %35, label %64

; <label>:35                                      ; preds = %25
  %36 = load i64* %j, align 8
  %37 = load i64* %i, align 8
  %38 = load %struct.minihash_struct** %2, align 8
  %39 = getelementptr inbounds %struct.minihash_struct* %38, i32 0, i32 0
  %40 = load %struct.miniarray_struct** %39, align 8
  %41 = getelementptr inbounds %struct.miniarray_struct* %40, i64 %37
  %42 = getelementptr inbounds %struct.miniarray_struct* %41, i32 0, i32 0
  %43 = load %struct.minipair_struct** %42, align 8
  %44 = getelementptr inbounds %struct.minipair_struct* %43, i64 %36
  %45 = getelementptr inbounds %struct.minipair_struct* %44, i32 0, i32 0
  %46 = load i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %60

; <label>:48                                      ; preds = %35
  %49 = load i64* %j, align 8
  %50 = load i64* %i, align 8
  %51 = load %struct.minihash_struct** %2, align 8
  %52 = getelementptr inbounds %struct.minihash_struct* %51, i32 0, i32 0
  %53 = load %struct.miniarray_struct** %52, align 8
  %54 = getelementptr inbounds %struct.miniarray_struct* %53, i64 %50
  %55 = getelementptr inbounds %struct.miniarray_struct* %54, i32 0, i32 0
  %56 = load %struct.minipair_struct** %55, align 8
  %57 = getelementptr inbounds %struct.minipair_struct* %56, i64 %49
  %58 = getelementptr inbounds %struct.minipair_struct* %57, i32 0, i32 0
  %59 = load i8** %58, align 8
  call void @smp_free(i8* %59)
  br label %60

; <label>:60                                      ; preds = %48, %35
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i64* %j, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %j, align 8
  br label %25

; <label>:64                                      ; preds = %25
  %65 = load i64* %i, align 8
  %66 = load %struct.minihash_struct** %2, align 8
  %67 = getelementptr inbounds %struct.minihash_struct* %66, i32 0, i32 0
  %68 = load %struct.miniarray_struct** %67, align 8
  %69 = getelementptr inbounds %struct.miniarray_struct* %68, i64 %65
  %70 = getelementptr inbounds %struct.miniarray_struct* %69, i32 0, i32 0
  %71 = load %struct.minipair_struct** %70, align 8
  %72 = bitcast %struct.minipair_struct* %71 to i8*
  call void @smp_free(i8* %72)
  %73 = load i64* %i, align 8
  %74 = load %struct.minihash_struct** %2, align 8
  %75 = getelementptr inbounds %struct.minihash_struct* %74, i32 0, i32 0
  %76 = load %struct.miniarray_struct** %75, align 8
  %77 = getelementptr inbounds %struct.miniarray_struct* %76, i64 %73
  %78 = getelementptr inbounds %struct.miniarray_struct* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %79

; <label>:79                                      ; preds = %64, %15
  br label %80

; <label>:80                                      ; preds = %79
  %81 = load i64* %i, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %i, align 8
  br label %9

; <label>:83                                      ; preds = %9
  %84 = load %struct.minihash_struct** %2, align 8
  %85 = getelementptr inbounds %struct.minihash_struct* %84, i32 0, i32 0
  %86 = load %struct.miniarray_struct** %85, align 8
  %87 = bitcast %struct.miniarray_struct* %86 to i8*
  call void @smp_free(i8* %87)
  %88 = load %struct.minihash_struct** %2, align 8
  %89 = getelementptr inbounds %struct.minihash_struct* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.minihash_struct** %2, align 8
  %91 = getelementptr inbounds %struct.minihash_struct* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.minihash_struct** %2, align 8
  %93 = getelementptr inbounds %struct.minihash_struct* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  store i32 0, i32* %1
  br label %94

; <label>:94                                      ; preds = %83, %7
  %95 = load i32* %1
  ret i32 %95
}

define void @smp_free(i8* %mem) nounwind {
  %1 = alloca i8*, align 8
  store i8* %mem, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i8** %1, align 8
  call void @free(i8* %5)
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret void
}

define i32 @minihash_fullclear(%struct.minihash_struct* %hash) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minihash_struct*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  %4 = load %struct.minihash_struct** %2, align 8
  %5 = getelementptr inbounds %struct.minihash_struct* %4, i32 0, i32 0
  %6 = load %struct.miniarray_struct** %5, align 8
  %7 = icmp ne %struct.miniarray_struct* %6, null
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %0
  store i32 0, i32* %1
  br label %120

; <label>:9                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %10

; <label>:10                                      ; preds = %106, %9
  %11 = load i64* %i, align 8
  %12 = load %struct.minihash_struct** %2, align 8
  %13 = getelementptr inbounds %struct.minihash_struct* %12, i32 0, i32 1
  %14 = load i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %109

; <label>:16                                      ; preds = %10
  %17 = load i64* %i, align 8
  %18 = load %struct.minihash_struct** %2, align 8
  %19 = getelementptr inbounds %struct.minihash_struct* %18, i32 0, i32 0
  %20 = load %struct.miniarray_struct** %19, align 8
  %21 = getelementptr inbounds %struct.miniarray_struct* %20, i64 %17
  %22 = getelementptr inbounds %struct.miniarray_struct* %21, i32 0, i32 0
  %23 = load %struct.minipair_struct** %22, align 8
  %24 = icmp ne %struct.minipair_struct* %23, null
  br i1 %24, label %25, label %105

; <label>:25                                      ; preds = %16
  store i64 0, i64* %j, align 8
  br label %26

; <label>:26                                      ; preds = %87, %25
  %27 = load i64* %j, align 8
  %28 = load i64* %i, align 8
  %29 = load %struct.minihash_struct** %2, align 8
  %30 = getelementptr inbounds %struct.minihash_struct* %29, i32 0, i32 0
  %31 = load %struct.miniarray_struct** %30, align 8
  %32 = getelementptr inbounds %struct.miniarray_struct* %31, i64 %28
  %33 = getelementptr inbounds %struct.miniarray_struct* %32, i32 0, i32 1
  %34 = load i64* %33, align 8
  %35 = icmp ult i64 %27, %34
  br i1 %35, label %36, label %90

; <label>:36                                      ; preds = %26
  %37 = load i64* %j, align 8
  %38 = load i64* %i, align 8
  %39 = load %struct.minihash_struct** %2, align 8
  %40 = getelementptr inbounds %struct.minihash_struct* %39, i32 0, i32 0
  %41 = load %struct.miniarray_struct** %40, align 8
  %42 = getelementptr inbounds %struct.miniarray_struct* %41, i64 %38
  %43 = getelementptr inbounds %struct.miniarray_struct* %42, i32 0, i32 0
  %44 = load %struct.minipair_struct** %43, align 8
  %45 = getelementptr inbounds %struct.minipair_struct* %44, i64 %37
  %46 = getelementptr inbounds %struct.minipair_struct* %45, i32 0, i32 0
  %47 = load i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %61

; <label>:49                                      ; preds = %36
  %50 = load i64* %j, align 8
  %51 = load i64* %i, align 8
  %52 = load %struct.minihash_struct** %2, align 8
  %53 = getelementptr inbounds %struct.minihash_struct* %52, i32 0, i32 0
  %54 = load %struct.miniarray_struct** %53, align 8
  %55 = getelementptr inbounds %struct.miniarray_struct* %54, i64 %51
  %56 = getelementptr inbounds %struct.miniarray_struct* %55, i32 0, i32 0
  %57 = load %struct.minipair_struct** %56, align 8
  %58 = getelementptr inbounds %struct.minipair_struct* %57, i64 %50
  %59 = getelementptr inbounds %struct.minipair_struct* %58, i32 0, i32 0
  %60 = load i8** %59, align 8
  call void @smp_free(i8* %60)
  br label %61

; <label>:61                                      ; preds = %49, %36
  %62 = load i64* %j, align 8
  %63 = load i64* %i, align 8
  %64 = load %struct.minihash_struct** %2, align 8
  %65 = getelementptr inbounds %struct.minihash_struct* %64, i32 0, i32 0
  %66 = load %struct.miniarray_struct** %65, align 8
  %67 = getelementptr inbounds %struct.miniarray_struct* %66, i64 %63
  %68 = getelementptr inbounds %struct.miniarray_struct* %67, i32 0, i32 0
  %69 = load %struct.minipair_struct** %68, align 8
  %70 = getelementptr inbounds %struct.minipair_struct* %69, i64 %62
  %71 = getelementptr inbounds %struct.minipair_struct* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.obj_struct* %71, i32 0, i32 3
  %73 = load i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %86

; <label>:75                                      ; preds = %61
  %76 = load i64* %j, align 8
  %77 = load i64* %i, align 8
  %78 = load %struct.minihash_struct** %2, align 8
  %79 = getelementptr inbounds %struct.minihash_struct* %78, i32 0, i32 0
  %80 = load %struct.miniarray_struct** %79, align 8
  %81 = getelementptr inbounds %struct.miniarray_struct* %80, i64 %77
  %82 = getelementptr inbounds %struct.miniarray_struct* %81, i32 0, i32 0
  %83 = load %struct.minipair_struct** %82, align 8
  %84 = getelementptr inbounds %struct.minipair_struct* %83, i64 %76
  %85 = getelementptr inbounds %struct.minipair_struct* %84, i32 0, i32 1
  call void @obj_clear(%struct.obj_struct* sret %3, %struct.obj_struct* %85)
  br label %86

; <label>:86                                      ; preds = %75, %61
  br label %87

; <label>:87                                      ; preds = %86
  %88 = load i64* %j, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %j, align 8
  br label %26

; <label>:90                                      ; preds = %26
  %91 = load i64* %i, align 8
  %92 = load %struct.minihash_struct** %2, align 8
  %93 = getelementptr inbounds %struct.minihash_struct* %92, i32 0, i32 0
  %94 = load %struct.miniarray_struct** %93, align 8
  %95 = getelementptr inbounds %struct.miniarray_struct* %94, i64 %91
  %96 = getelementptr inbounds %struct.miniarray_struct* %95, i32 0, i32 0
  %97 = load %struct.minipair_struct** %96, align 8
  %98 = bitcast %struct.minipair_struct* %97 to i8*
  call void @smp_free(i8* %98)
  %99 = load i64* %i, align 8
  %100 = load %struct.minihash_struct** %2, align 8
  %101 = getelementptr inbounds %struct.minihash_struct* %100, i32 0, i32 0
  %102 = load %struct.miniarray_struct** %101, align 8
  %103 = getelementptr inbounds %struct.miniarray_struct* %102, i64 %99
  %104 = getelementptr inbounds %struct.miniarray_struct* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  br label %105

; <label>:105                                     ; preds = %90, %16
  br label %106

; <label>:106                                     ; preds = %105
  %107 = load i64* %i, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %i, align 8
  br label %10

; <label>:109                                     ; preds = %10
  %110 = load %struct.minihash_struct** %2, align 8
  %111 = getelementptr inbounds %struct.minihash_struct* %110, i32 0, i32 0
  %112 = load %struct.miniarray_struct** %111, align 8
  %113 = bitcast %struct.miniarray_struct* %112 to i8*
  call void @smp_free(i8* %113)
  %114 = load %struct.minihash_struct** %2, align 8
  %115 = getelementptr inbounds %struct.minihash_struct* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.minihash_struct** %2, align 8
  %117 = getelementptr inbounds %struct.minihash_struct* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load %struct.minihash_struct** %2, align 8
  %119 = getelementptr inbounds %struct.minihash_struct* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  store i32 0, i32* %1
  br label %120

; <label>:120                                     ; preds = %109, %8
  %121 = load i32* %1
  ret i32 %121
}

define i32 @minihash_function(i8* %key) nounwind {
  %1 = alloca i8*, align 8
  %hash = alloca i32, align 4
  store i8* %key, i8** %1, align 8
  store i32 5381, i32* %hash, align 4
  %2 = load i8** %1, align 8
  %3 = getelementptr inbounds i8* %2, i32 -1
  store i8* %3, i8** %1, align 8
  br label %4

; <label>:4                                       ; preds = %9, %0
  %5 = load i8** %1, align 8
  %6 = getelementptr inbounds i8* %5, i32 1
  store i8* %6, i8** %1, align 8
  %7 = load i8* %6
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %18

; <label>:9                                       ; preds = %4
  %10 = load i32* %hash, align 4
  %11 = shl i32 %10, 5
  %12 = load i32* %hash, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i8** %1, align 8
  %15 = load i8* %14
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %hash, align 4
  br label %4

; <label>:18                                      ; preds = %4
  %19 = load i32* %hash, align 4
  ret i32 %19
}

define i32 @minihash_add(%struct.minihash_struct* %hash, i8* %key, %struct.obj_struct* byval %val) nounwind {
  %1 = alloca %struct.minihash_struct*, align 8
  %2 = alloca i8*, align 8
  %index = alloca i32, align 4
  %pair = alloca %struct.minipair_struct, align 8
  %3 = alloca %struct.minipair_struct, align 8
  %hash2 = alloca %struct.minihash_struct, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %1, align 8
  store i8* %key, i8** %2, align 8
  %4 = load %struct.minihash_struct** %1, align 8
  %5 = getelementptr inbounds %struct.minihash_struct* %4, i32 0, i32 0
  %6 = load %struct.miniarray_struct** %5, align 8
  %7 = icmp ne %struct.miniarray_struct* %6, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = load %struct.minihash_struct** %1, align 8
  call void @minihash_init(%struct.minihash_struct* sret %9)
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = load i8** %2, align 8
  %12 = call i32 @minihash_function(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = load %struct.minihash_struct** %1, align 8
  %15 = getelementptr inbounds %struct.minihash_struct* %14, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = urem i64 %13, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %index, align 4
  %19 = load i8** %2, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add i64 %20, 1
  %22 = mul i64 1, %21
  %23 = call i8* @smp_malloc(i64 %22)
  %24 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %26 = load i8** %25, align 8
  %27 = call i64 @llvm.objectsize.i64(i8* %26, i1 false)
  %28 = icmp ne i64 %27, -1
  br i1 %28, label %29, label %37

; <label>:29                                      ; preds = %10
  %30 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = load i8** %2, align 8
  %33 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %34 = load i8** %33, align 8
  %35 = call i64 @llvm.objectsize.i64(i8* %34, i1 false)
  %36 = call i8* @__strcpy_chk(i8* %31, i8* %32, i64 %35)
  br label %42

; <label>:37                                      ; preds = %10
  %38 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %39 = load i8** %38, align 8
  %40 = load i8** %2, align 8
  %41 = call i8* @__inline_strcpy_chk(i8* %39, i8* %40)
  br label %42

; <label>:42                                      ; preds = %37, %29
  %43 = phi i8* [ %36, %29 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 1
  %45 = bitcast %struct.obj_struct* %44 to i8*
  %46 = bitcast %struct.obj_struct* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  %47 = load i32* %index, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.minihash_struct** %1, align 8
  %50 = getelementptr inbounds %struct.minihash_struct* %49, i32 0, i32 0
  %51 = load %struct.miniarray_struct** %50, align 8
  %52 = getelementptr inbounds %struct.miniarray_struct* %51, i64 %48
  %53 = getelementptr inbounds %struct.miniarray_struct* %52, i32 0, i32 0
  %54 = load %struct.minipair_struct** %53, align 8
  %55 = icmp ne %struct.minipair_struct* %54, null
  br i1 %55, label %61, label %56

; <label>:56                                      ; preds = %42
  %57 = load %struct.minihash_struct** %1, align 8
  %58 = getelementptr inbounds %struct.minihash_struct* %57, i32 0, i32 2
  %59 = load i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

; <label>:61                                      ; preds = %56, %42
  %62 = load i32* %index, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.minihash_struct** %1, align 8
  %65 = getelementptr inbounds %struct.minihash_struct* %64, i32 0, i32 0
  %66 = load %struct.miniarray_struct** %65, align 8
  %67 = getelementptr inbounds %struct.miniarray_struct* %66, i64 %63
  %68 = bitcast %struct.minipair_struct* %3 to i8*
  %69 = bitcast %struct.minipair_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 40, i32 8, i1 false)
  %70 = call i32 @miniarray_push(%struct.miniarray_struct* %67, %struct.minipair_struct* byval %3)
  %71 = load %struct.minihash_struct** %1, align 8
  %72 = getelementptr inbounds %struct.minihash_struct* %71, i32 0, i32 3
  %73 = load i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.minihash_struct** %1, align 8
  %76 = getelementptr inbounds %struct.minihash_struct* %75, i32 0, i32 2
  %77 = load i64* %76, align 8
  %78 = load %struct.minihash_struct** %1, align 8
  %79 = getelementptr inbounds %struct.minihash_struct* %78, i32 0, i32 1
  %80 = load i64* %79, align 8
  %81 = udiv i64 %77, %80
  %82 = uitofp i64 %81 to double
  %83 = fcmp ogt double %82, 7.500000e-01
  br i1 %83, label %84, label %99

; <label>:84                                      ; preds = %61
  %85 = load %struct.minihash_struct** %1, align 8
  %86 = getelementptr inbounds %struct.minihash_struct* %85, i32 0, i32 1
  %87 = load i64* %86, align 8
  %88 = uitofp i64 %87 to double
  %89 = fmul double %88, 7.500000e-01
  %90 = fdiv double %89, 2.500000e-01
  %91 = fptoui double %90 to i64
  call void @minihash_init_capacity(%struct.minihash_struct* sret %hash2, i64 %91)
  %92 = load %struct.minihash_struct** %1, align 8
  %93 = call i32 @minihash_copy(%struct.minihash_struct* %hash2, %struct.minihash_struct* %92)
  %94 = load %struct.minihash_struct** %1, align 8
  %95 = call i32 @minihash_clear(%struct.minihash_struct* %94)
  %96 = load %struct.minihash_struct** %1, align 8
  %97 = bitcast %struct.minihash_struct* %96 to i8*
  %98 = bitcast %struct.minihash_struct* %hash2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 32, i32 8, i1 false)
  br label %99

; <label>:99                                      ; preds = %84, %61
  ret i32 0
}

declare i64 @strlen(i8*)

declare i8* @__strcpy_chk(i8*, i8*, i64) nounwind

define internal i8* @__inline_strcpy_chk(i8* noalias %__dest, i8* noalias %__src) nounwind inlinehint {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %__dest, i8** %1, align 8
  store i8* %__src, i8** %2, align 8
  %3 = load i8** %1, align 8
  %4 = load i8** %2, align 8
  %5 = load i8** %1, align 8
  %6 = call i64 @llvm.objectsize.i64(i8* %5, i1 false)
  %7 = call i8* @__strcpy_chk(i8* %3, i8* %4, i64 %6)
  ret i8* %7
}

define i32 @miniarray_push(%struct.miniarray_struct* %arr, %struct.minipair_struct* byval %pair) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.miniarray_struct*, align 8
  %i = alloca i64, align 8
  store %struct.miniarray_struct* %arr, %struct.miniarray_struct** %2, align 8
  %3 = load %struct.miniarray_struct** %2, align 8
  %4 = getelementptr inbounds %struct.miniarray_struct* %3, i32 0, i32 0
  %5 = load %struct.minipair_struct** %4, align 8
  %6 = icmp ne %struct.minipair_struct* %5, null
  br i1 %6, label %16, label %7

; <label>:7                                       ; preds = %0
  %8 = call i64 @next_power_of_2(i64 1)
  %9 = mul i64 40, %8
  %10 = call i8* @smp_malloc(i64 %9)
  %11 = bitcast i8* %10 to %struct.minipair_struct*
  %12 = load %struct.miniarray_struct** %2, align 8
  %13 = getelementptr inbounds %struct.miniarray_struct* %12, i32 0, i32 0
  store %struct.minipair_struct* %11, %struct.minipair_struct** %13, align 8
  %14 = load %struct.miniarray_struct** %2, align 8
  %15 = getelementptr inbounds %struct.miniarray_struct* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  br label %16

; <label>:16                                      ; preds = %7, %0
  store i64 0, i64* %i, align 8
  br label %17

; <label>:17                                      ; preds = %46, %16
  %18 = load i64* %i, align 8
  %19 = load %struct.miniarray_struct** %2, align 8
  %20 = getelementptr inbounds %struct.miniarray_struct* %19, i32 0, i32 1
  %21 = load i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %49

; <label>:23                                      ; preds = %17
  %24 = load i64* %i, align 8
  %25 = load %struct.miniarray_struct** %2, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i32 0, i32 0
  %27 = load %struct.minipair_struct** %26, align 8
  %28 = getelementptr inbounds %struct.minipair_struct* %27, i64 %24
  %29 = getelementptr inbounds %struct.minipair_struct* %28, i32 0, i32 0
  %30 = load i8** %29, align 8
  %31 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %32 = load i8** %31, align 8
  %33 = call i32 @strcmp(i8* %30, i8* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

; <label>:35                                      ; preds = %23
  %36 = load i64* %i, align 8
  %37 = load %struct.miniarray_struct** %2, align 8
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i32 0, i32 0
  %39 = load %struct.minipair_struct** %38, align 8
  %40 = getelementptr inbounds %struct.minipair_struct* %39, i64 %36
  %41 = getelementptr inbounds %struct.minipair_struct* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 1
  %43 = bitcast %struct.obj_struct* %41 to i8*
  %44 = bitcast %struct.obj_struct* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  store i32 0, i32* %1
  br label %88

; <label>:45                                      ; preds = %23
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load i64* %i, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %i, align 8
  br label %17

; <label>:49                                      ; preds = %17
  %50 = load %struct.miniarray_struct** %2, align 8
  %51 = getelementptr inbounds %struct.miniarray_struct* %50, i32 0, i32 1
  %52 = load i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = icmp uge i64 %53, 1
  br i1 %54, label %55, label %77

; <label>:55                                      ; preds = %49
  %56 = load %struct.miniarray_struct** %2, align 8
  %57 = getelementptr inbounds %struct.miniarray_struct* %56, i32 0, i32 1
  %58 = load i64* %57, align 8
  %59 = add i64 %58, 1
  %60 = call i32 @is_power_of_2(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

; <label>:62                                      ; preds = %55
  %63 = load %struct.miniarray_struct** %2, align 8
  %64 = getelementptr inbounds %struct.miniarray_struct* %63, i32 0, i32 0
  %65 = load %struct.minipair_struct** %64, align 8
  %66 = bitcast %struct.minipair_struct* %65 to i8*
  %67 = load %struct.miniarray_struct** %2, align 8
  %68 = getelementptr inbounds %struct.miniarray_struct* %67, i32 0, i32 1
  %69 = load i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = call i64 @next_power_of_2(i64 %70)
  %72 = mul i64 40, %71
  %73 = call i8* @smp_realloc(i8* %66, i64 %72)
  %74 = bitcast i8* %73 to %struct.minipair_struct*
  %75 = load %struct.miniarray_struct** %2, align 8
  %76 = getelementptr inbounds %struct.miniarray_struct* %75, i32 0, i32 0
  store %struct.minipair_struct* %74, %struct.minipair_struct** %76, align 8
  br label %77

; <label>:77                                      ; preds = %62, %55, %49
  %78 = load %struct.miniarray_struct** %2, align 8
  %79 = getelementptr inbounds %struct.miniarray_struct* %78, i32 0, i32 1
  %80 = load i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.miniarray_struct** %2, align 8
  %83 = getelementptr inbounds %struct.miniarray_struct* %82, i32 0, i32 0
  %84 = load %struct.minipair_struct** %83, align 8
  %85 = getelementptr inbounds %struct.minipair_struct* %84, i64 %80
  %86 = bitcast %struct.minipair_struct* %85 to i8*
  %87 = bitcast %struct.minipair_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 40, i32 8, i1 false)
  store i32 0, i32* %1
  br label %88

; <label>:88                                      ; preds = %77, %35
  %89 = load i32* %1
  ret i32 %89
}

define i32 @minihash_copy(%struct.minihash_struct* %res, %struct.minihash_struct* %hash) nounwind {
  %1 = alloca %struct.minihash_struct*, align 8
  %2 = alloca %struct.minihash_struct*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.minihash_struct* %res, %struct.minihash_struct** %1, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %61, %0
  %5 = load i64* %i, align 8
  %6 = load %struct.minihash_struct** %2, align 8
  %7 = getelementptr inbounds %struct.minihash_struct* %6, i32 0, i32 1
  %8 = load i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %64

; <label>:10                                      ; preds = %4
  %11 = load i64* %i, align 8
  %12 = load %struct.minihash_struct** %2, align 8
  %13 = getelementptr inbounds %struct.minihash_struct* %12, i32 0, i32 0
  %14 = load %struct.miniarray_struct** %13, align 8
  %15 = getelementptr inbounds %struct.miniarray_struct* %14, i64 %11
  %16 = getelementptr inbounds %struct.miniarray_struct* %15, i32 0, i32 0
  %17 = load %struct.minipair_struct** %16, align 8
  %18 = icmp ne %struct.minipair_struct* %17, null
  br i1 %18, label %19, label %60

; <label>:19                                      ; preds = %10
  store i64 0, i64* %j, align 8
  br label %20

; <label>:20                                      ; preds = %56, %19
  %21 = load i64* %j, align 8
  %22 = load i64* %i, align 8
  %23 = load %struct.minihash_struct** %2, align 8
  %24 = getelementptr inbounds %struct.minihash_struct* %23, i32 0, i32 0
  %25 = load %struct.miniarray_struct** %24, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i64 %22
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i32 0, i32 1
  %28 = load i64* %27, align 8
  %29 = icmp ult i64 %21, %28
  br i1 %29, label %30, label %59

; <label>:30                                      ; preds = %20
  %31 = load %struct.minihash_struct** %1, align 8
  %32 = load i64* %j, align 8
  %33 = load i64* %i, align 8
  %34 = load %struct.minihash_struct** %2, align 8
  %35 = getelementptr inbounds %struct.minihash_struct* %34, i32 0, i32 0
  %36 = load %struct.miniarray_struct** %35, align 8
  %37 = getelementptr inbounds %struct.miniarray_struct* %36, i64 %33
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i32 0, i32 0
  %39 = load %struct.minipair_struct** %38, align 8
  %40 = getelementptr inbounds %struct.minipair_struct* %39, i64 %32
  %41 = getelementptr inbounds %struct.minipair_struct* %40, i32 0, i32 0
  %42 = load i8** %41, align 8
  %43 = load i64* %j, align 8
  %44 = load i64* %i, align 8
  %45 = load %struct.minihash_struct** %2, align 8
  %46 = getelementptr inbounds %struct.minihash_struct* %45, i32 0, i32 0
  %47 = load %struct.miniarray_struct** %46, align 8
  %48 = getelementptr inbounds %struct.miniarray_struct* %47, i64 %44
  %49 = getelementptr inbounds %struct.miniarray_struct* %48, i32 0, i32 0
  %50 = load %struct.minipair_struct** %49, align 8
  %51 = getelementptr inbounds %struct.minipair_struct* %50, i64 %43
  %52 = getelementptr inbounds %struct.minipair_struct* %51, i32 0, i32 1
  %53 = bitcast %struct.obj_struct* %3 to i8*
  %54 = bitcast %struct.obj_struct* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 32, i32 8, i1 false)
  %55 = call i32 @minihash_add(%struct.minihash_struct* %31, i8* %42, %struct.obj_struct* byval %3)
  br label %56

; <label>:56                                      ; preds = %30
  %57 = load i64* %j, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %j, align 8
  br label %20

; <label>:59                                      ; preds = %20
  br label %60

; <label>:60                                      ; preds = %59, %10
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i64* %i, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %i, align 8
  br label %4

; <label>:64                                      ; preds = %4
  ret i32 0
}

define i64 @next_power_of_2(i64 %x) nounwind {
  %1 = alloca i64, align 8
  store i64 %x, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = lshr i64 %2, 1
  %4 = load i64* %1, align 8
  %5 = or i64 %4, %3
  store i64 %5, i64* %1, align 8
  %6 = load i64* %1, align 8
  %7 = lshr i64 %6, 2
  %8 = load i64* %1, align 8
  %9 = or i64 %8, %7
  store i64 %9, i64* %1, align 8
  %10 = load i64* %1, align 8
  %11 = lshr i64 %10, 4
  %12 = load i64* %1, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %1, align 8
  %14 = load i64* %1, align 8
  %15 = lshr i64 %14, 8
  %16 = load i64* %1, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %1, align 8
  %18 = load i64* %1, align 8
  %19 = lshr i64 %18, 16
  %20 = load i64* %1, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %1, align 8
  %22 = load i64* %1, align 8
  %23 = lshr i64 %22, 32
  %24 = load i64* %1, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %1, align 8
  %26 = load i64* %1, align 8
  %27 = add i64 %26, 1
  ret i64 %27
}

define i32 @is_power_of_2(i64 %x) nounwind {
; <label>:0
  %1 = alloca i64, align 8
  store i64 %x, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = load i64* %1, align 8
  %6 = load i64* %1, align 8
  %7 = sub i64 %6, 1
  %8 = and i64 %5, %7
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  br label %11

; <label>:11                                      ; preds = %4, %0
  %12 = phi i1 [ false, %0 ], [ %10, %4 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

define i8* @smp_realloc(i8* %mem, i64 %bytes) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i8* %mem, i8** %1, align 8
  store i64 %bytes, i64* %2, align 8
  %3 = load i8** %1, align 8
  %4 = load i64* %2, align 8
  %5 = call i8* @realloc(i8* %3, i64 %4)
  ret i8* %5
}

define i32 @minihash_containsp(%struct.minihash_struct* %hash, i8* %key) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minihash_struct*, align 8
  %3 = alloca i8*, align 8
  %index = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  store i8* %key, i8** %3, align 8
  %4 = load %struct.minihash_struct** %2, align 8
  %5 = icmp ne %struct.minihash_struct* %4, null
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = load %struct.minihash_struct** %2, align 8
  %8 = getelementptr inbounds %struct.minihash_struct* %7, i32 0, i32 0
  %9 = load %struct.miniarray_struct** %8, align 8
  %10 = icmp ne %struct.miniarray_struct* %9, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %6, %0
  store i32 0, i32* %1
  br label %65

; <label>:12                                      ; preds = %6
  %13 = load i8** %3, align 8
  %14 = call i32 @minihash_function(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = load %struct.minihash_struct** %2, align 8
  %17 = getelementptr inbounds %struct.minihash_struct* %16, i32 0, i32 1
  %18 = load i64* %17, align 8
  %19 = urem i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %index, align 4
  %21 = load i32* %index, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.minihash_struct** %2, align 8
  %24 = getelementptr inbounds %struct.minihash_struct* %23, i32 0, i32 0
  %25 = load %struct.miniarray_struct** %24, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i64 %22
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i32 0, i32 0
  %28 = load %struct.minipair_struct** %27, align 8
  %29 = icmp ne %struct.minipair_struct* %28, null
  br i1 %29, label %30, label %64

; <label>:30                                      ; preds = %12
  store i64 0, i64* %i, align 8
  br label %31

; <label>:31                                      ; preds = %60, %30
  %32 = load i64* %i, align 8
  %33 = load i32* %index, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.minihash_struct** %2, align 8
  %36 = getelementptr inbounds %struct.minihash_struct* %35, i32 0, i32 0
  %37 = load %struct.miniarray_struct** %36, align 8
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i64 %34
  %39 = getelementptr inbounds %struct.miniarray_struct* %38, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = icmp ult i64 %32, %40
  br i1 %41, label %42, label %63

; <label>:42                                      ; preds = %31
  %43 = load i64* %i, align 8
  %44 = load i32* %index, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.minihash_struct** %2, align 8
  %47 = getelementptr inbounds %struct.minihash_struct* %46, i32 0, i32 0
  %48 = load %struct.miniarray_struct** %47, align 8
  %49 = getelementptr inbounds %struct.miniarray_struct* %48, i64 %45
  %50 = getelementptr inbounds %struct.miniarray_struct* %49, i32 0, i32 0
  %51 = load %struct.minipair_struct** %50, align 8
  %52 = getelementptr inbounds %struct.minipair_struct* %51, i64 %43
  %53 = getelementptr inbounds %struct.minipair_struct* %52, i32 0, i32 0
  %54 = load i8** %53, align 8
  %55 = load i8** %3, align 8
  %56 = call i32 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %42
  store i32 1, i32* %1
  br label %65

; <label>:59                                      ; preds = %42
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i64* %i, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %i, align 8
  br label %31

; <label>:63                                      ; preds = %31
  br label %64

; <label>:64                                      ; preds = %63, %12
  store i32 0, i32* %1
  br label %65

; <label>:65                                      ; preds = %64, %58, %11
  %66 = load i32* %1
  ret i32 %66
}

define i32 @minihash_print(%struct.minihash_struct* byval %hash) nounwind {
  %1 = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %2 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %3 = load %struct.miniarray_struct** %2, align 8
  %4 = icmp ne %struct.miniarray_struct* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  store i32 0, i32* %1
  br label %52

; <label>:6                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %7

; <label>:7                                       ; preds = %47, %6
  %8 = load i64* %i, align 8
  %9 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %50

; <label>:12                                      ; preds = %7
  %13 = load i64* %i, align 8
  %14 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %15 = load %struct.miniarray_struct** %14, align 8
  %16 = getelementptr inbounds %struct.miniarray_struct* %15, i64 %13
  %17 = getelementptr inbounds %struct.miniarray_struct* %16, i32 0, i32 0
  %18 = load %struct.minipair_struct** %17, align 8
  %19 = icmp ne %struct.minipair_struct* %18, null
  br i1 %19, label %20, label %46

; <label>:20                                      ; preds = %12
  store i64 0, i64* %j, align 8
  br label %21

; <label>:21                                      ; preds = %42, %20
  %22 = load i64* %j, align 8
  %23 = load i64* %i, align 8
  %24 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %25 = load %struct.miniarray_struct** %24, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i64 %23
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i32 0, i32 1
  %28 = load i64* %27, align 8
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %30, label %45

; <label>:30                                      ; preds = %21
  %31 = load i64* %j, align 8
  %32 = load i64* %i, align 8
  %33 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %34 = load %struct.miniarray_struct** %33, align 8
  %35 = getelementptr inbounds %struct.miniarray_struct* %34, i64 %32
  %36 = getelementptr inbounds %struct.miniarray_struct* %35, i32 0, i32 0
  %37 = load %struct.minipair_struct** %36, align 8
  %38 = getelementptr inbounds %struct.minipair_struct* %37, i64 %31
  %39 = getelementptr inbounds %struct.minipair_struct* %38, i32 0, i32 0
  %40 = load i8** %39, align 8
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str13, i32 0, i32 0), i8* %40)
  br label %42

; <label>:42                                      ; preds = %30
  %43 = load i64* %j, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %j, align 8
  br label %21

; <label>:45                                      ; preds = %21
  br label %46

; <label>:46                                      ; preds = %45, %12
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i64* %i, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %i, align 8
  br label %7

; <label>:50                                      ; preds = %7
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  store i32 0, i32* %1
  br label %52

; <label>:52                                      ; preds = %50, %5
  %53 = load i32* %1
  ret i32 %53
}

define i32 @obj_hash(i32* %dest, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %hash = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32* %dest, i32** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %7 = load %struct.smpType_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smpType_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %0
  %13 = bitcast %struct.obj_struct* %3 to i8*
  %14 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  %15 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %3)
  %16 = call i32 @minihash_function(i8* %15)
  %17 = load i32** %2, align 8
  store i32 %16, i32* %17
  store i32 0, i32* %1
  br label %34

; <label>:18                                      ; preds = %0
  %19 = bitcast %struct.obj_struct* %4 to i8*
  %20 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %hash, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([13 x i8]* @.str19, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %21 = getelementptr inbounds %struct.obj_struct* %hash, i32 0, i32 2
  %22 = load %struct.smpType_struct** %21, align 8
  %23 = getelementptr inbounds %struct.smpType_struct* %22, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = load i32* @smpType_id_int, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %18
  %28 = bitcast %struct.obj_struct* %5 to i8*
  %29 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  %30 = call i64 @smpInteger_to_clong(%struct.obj_struct* byval %5)
  %31 = trunc i64 %30 to i32
  %32 = load i32** %2, align 8
  store i32 %31, i32* %32
  store i32 0, i32* %1
  br label %34

; <label>:33                                      ; preds = %18
  store i32 1, i32* %1
  br label %34

; <label>:34                                      ; preds = %33, %27, %12
  %35 = load i32* %1
  ret i32 %35
}

define i8* @smpString_to_cstr(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.smpstrstruct*
  %4 = getelementptr inbounds %struct.smpstrstruct* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  ret i8* %5
}

define i64 @smpInteger_to_clong(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to [1 x %5]*
  %4 = getelementptr inbounds [1 x %5]* %3, i32 0, i32 0
  %5 = call i64 @__gmpz_get_si(%5* %4) readonly
  ret i64 %5
}

define void @objid_init(%struct.obj_struct* sret %agg.result, i32 %type_id) nounwind {
  %1 = alloca i32, align 4
  %res = alloca %struct.obj_struct, align 8
  store i32 %type_id, i32* %1, align 4
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_id)
  %2 = load i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = inttoptr i64 %3 to i8*
  %5 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %4, i8** %5, align 8
  %6 = bitcast %struct.obj_struct* %agg.result to i8*
  %7 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  ret void
}

define void @obj_eq(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj1, %struct.obj_struct* byval %obj2) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj1, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj2, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = icmp eq i8* %2, %4
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %10

; <label>:8                                       ; preds = %0
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %10

; <label>:10                                      ; preds = %8, %6
  ret void
}

define void @obj_types_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj1, %struct.obj_struct* byval %obj2) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj1, i32 0, i32 2
  %2 = load %struct.smpType_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smpType_struct* %2, i32 0, i32 0
  %4 = load i8** %3, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj2, i32 0, i32 2
  %6 = load %struct.smpType_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smpType_struct* %6, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = call i32 @strcmp(i8* %4, i8* %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %15

; <label>:13                                      ; preds = %0
  %14 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %15

; <label>:15                                      ; preds = %13, %11
  ret void
}

define void @smpObject_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpObject_cons(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %list = alloca %struct.smpPair_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.smpPair_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.smpPair_struct* %list, i32 0, i32 0
  %7 = bitcast %struct.obj_struct* %6 to i8*
  %8 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load %struct.obj_struct** %2, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %9, i64 0
  %11 = getelementptr inbounds %struct.obj_struct* %10, i32 0, i32 2
  %12 = load %struct.smpType_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smpType_struct* %12, i32 0, i32 1
  %14 = load i32* %13, align 4
  %15 = load i32* @smpType_id_nil, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.smpPair_struct* %list, i32 0, i32 1
  store %struct.obj_struct* null, %struct.obj_struct** %18, align 8
  br label %46

; <label>:19                                      ; preds = %0
  %20 = load %struct.obj_struct** %2, align 8
  %21 = getelementptr inbounds %struct.obj_struct* %20, i64 0
  %22 = getelementptr inbounds %struct.obj_struct* %21, i32 0, i32 2
  %23 = load %struct.smpType_struct** %22, align 8
  %24 = getelementptr inbounds %struct.smpType_struct* %23, i32 0, i32 1
  %25 = load i32* %24, align 4
  %26 = load i32* @smpType_id_list, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

; <label>:28                                      ; preds = %19
  %29 = call i8* @smp_malloc(i64 32)
  %30 = bitcast i8* %29 to %struct.obj_struct*
  %31 = getelementptr inbounds %struct.smpPair_struct* %list, i32 0, i32 1
  store %struct.obj_struct* %30, %struct.obj_struct** %31, align 8
  %32 = getelementptr inbounds %struct.smpPair_struct* %list, i32 0, i32 1
  %33 = load %struct.obj_struct** %32, align 8
  %34 = load %struct.obj_struct** %2, align 8
  %35 = getelementptr inbounds %struct.obj_struct* %34, i64 0
  %36 = bitcast %struct.obj_struct* %33 to i8*
  %37 = bitcast %struct.obj_struct* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  br label %45

; <label>:38                                      ; preds = %19
  %39 = bitcast %struct.obj_struct* %3 to i8*
  %40 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  %41 = load %struct.obj_struct** %2, align 8
  %42 = getelementptr inbounds %struct.obj_struct* %41, i64 0
  %43 = bitcast %struct.obj_struct* %4 to i8*
  %44 = bitcast %struct.obj_struct* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  call void @smpPair_init(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  br label %49

; <label>:45                                      ; preds = %28
  br label %46

; <label>:46                                      ; preds = %45, %17
  %47 = bitcast %struct.smpPair_struct* %5 to i8*
  %48 = bitcast %struct.smpPair_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 40, i32 8, i1 false)
  call void @smpList_init(%struct.obj_struct* sret %agg.result, %struct.smpPair_struct* byval %5)
  br label %49

; <label>:49                                      ; preds = %46, %38
  ret void
}

define void @smpPair_init(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %car, %struct.obj_struct* byval %cdr) nounwind {
  %pair = alloca %struct.smpPair_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = getelementptr inbounds %struct.smpPair_struct* %pair, i32 0, i32 0
  %3 = bitcast %struct.obj_struct* %2 to i8*
  %4 = bitcast %struct.obj_struct* %car to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  %5 = getelementptr inbounds %struct.obj_struct* %cdr, i32 0, i32 2
  %6 = load %struct.smpType_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smpType_struct* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = load i32* @smpType_id_nil, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.smpPair_struct* %pair, i32 0, i32 1
  store %struct.obj_struct* null, %struct.obj_struct** %12, align 8
  br label %21

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 32)
  %15 = bitcast i8* %14 to %struct.obj_struct*
  %16 = getelementptr inbounds %struct.smpPair_struct* %pair, i32 0, i32 1
  store %struct.obj_struct* %15, %struct.obj_struct** %16, align 8
  %17 = getelementptr inbounds %struct.smpPair_struct* %pair, i32 0, i32 1
  %18 = load %struct.obj_struct** %17, align 8
  %19 = bitcast %struct.obj_struct* %18 to i8*
  %20 = bitcast %struct.obj_struct* %cdr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  br label %21

; <label>:21                                      ; preds = %13, %11
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0))
  %22 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* %24)
  %25 = call i8* @smp_malloc(i64 40)
  %26 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.smpPair_struct*
  %30 = bitcast %struct.smpPair_struct* %29 to i8*
  %31 = bitcast %struct.smpPair_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 40, i32 8, i1 false)
  %32 = bitcast %struct.obj_struct* %agg.result to i8*
  %33 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  ret void
}

define void @smpList_init(%struct.obj_struct* sret %agg.result, %struct.smpPair_struct* byval %list) nounwind {
  %res = alloca %struct.obj_struct, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_list)
  %1 = call i8* @smp_malloc(i64 40)
  %2 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %1, i8** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpPair_struct*
  %6 = bitcast %struct.smpPair_struct* %5 to i8*
  %7 = bitcast %struct.smpPair_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 40, i32 8, i1 false)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  %9 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  ret void
}

define void @smpObject_cons_c(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %car, %struct.obj_struct* byval %cdr) nounwind {
  %1 = alloca %struct.obj_struct, align 8
  %2 = bitcast %struct.obj_struct* %1 to i8*
  %3 = bitcast %struct.obj_struct* %car to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @smpObject_cons(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %1, i32 1, %struct.obj_struct* %cdr)
  ret void
}

define void @smpObject_eq(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load i32* %1, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = load %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %10, i64 0
  %12 = getelementptr inbounds %struct.obj_struct* %11, i32 0, i32 3
  %13 = load i8** %12, align 8
  %14 = icmp eq i8* %9, %13
  %15 = zext i1 %14 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %15)
  br label %18

; <label>:16                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([14 x i8]* @.str21, i32 0, i32 0))
  %17 = load i32* %1, align 4
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([50 x i8]* @.str22, i32 0, i32 0), i32 %17)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %18

; <label>:18                                      ; preds = %16, %7
  ret void
}

define void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %truep) nounwind {
  %1 = alloca i32, align 4
  store i32 %truep, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %8

; <label>:6                                       ; preds = %0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %8

; <label>:8                                       ; preds = %6, %4
  ret void
}

define void @smpObject_eql(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpObject_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), i32 %6, %struct.obj_struct* %7)
  ret void
}

define void @smpObject_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpObject_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i32 %6, %struct.obj_struct* %7)
  ret void
}

define void @smpObject_get_fun(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %name) nounwind {
  %1 = alloca i8*, align 8
  %type = alloca %struct.smpType_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %type1 = alloca %struct.smpType_struct*, align 8
  %res2 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i8* %name, i8** %1, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %7 = load %struct.smpType_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smpType_struct* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = load i32* @smpType_id_class, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %32

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smpType_struct*
  store %struct.smpType_struct* %15, %struct.smpType_struct** %type, align 8
  %16 = load %struct.smpType_struct** %type, align 8
  %17 = load i8** %1, align 8
  call void @smpObject_get_fun_rec(%struct.obj_struct* sret %res, %struct.smpType_struct* %16, i8* %17, i32 0)
  %18 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %19 = load %struct.smpType_struct** %18, align 8
  %20 = getelementptr inbounds %struct.smpType_struct* %19, i32 0, i32 1
  %21 = load i32* %20, align 4
  %22 = load i32* @smpType_id_nil, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %12
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([21 x i8]* @.str26, i32 0, i32 0))
  %25 = load i8** %1, align 8
  %26 = load %struct.smpType_struct** %type, align 8
  %27 = getelementptr inbounds %struct.smpType_struct* %26, i32 0, i32 0
  %28 = load i8** %27, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([41 x i8]* @.str27, i32 0, i32 0), i8* %25, i8* %28)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %51

; <label>:29                                      ; preds = %12
  %30 = bitcast %struct.obj_struct* %agg.result to i8*
  %31 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  br label %51

; <label>:32                                      ; preds = %0
  %33 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %34 = load %struct.smpType_struct** %33, align 8
  store %struct.smpType_struct* %34, %struct.smpType_struct** %type1, align 8
  %35 = load %struct.smpType_struct** %type1, align 8
  %36 = load i8** %1, align 8
  call void @smpObject_get_fun_rec(%struct.obj_struct* sret %res2, %struct.smpType_struct* %35, i8* %36, i32 1)
  %37 = getelementptr inbounds %struct.obj_struct* %res2, i32 0, i32 2
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_nil, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

; <label>:43                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([21 x i8]* @.str26, i32 0, i32 0))
  %44 = load i8** %1, align 8
  %45 = load %struct.smpType_struct** %type1, align 8
  %46 = getelementptr inbounds %struct.smpType_struct* %45, i32 0, i32 0
  %47 = load i8** %46, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %4, %struct.obj_struct* byval %5, i8* getelementptr inbounds ([44 x i8]* @.str28, i32 0, i32 0), i8* %44, i8* %47)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %51

; <label>:48                                      ; preds = %32
  %49 = bitcast %struct.obj_struct* %agg.result to i8*
  %50 = bitcast %struct.obj_struct* %res2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  br label %51

; <label>:51                                      ; preds = %48, %43, %29, %24
  ret void
}

define void @smpFunction_call(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, %struct.obj_struct* byval %fun, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %fun_core = alloca %struct.smpFunction_struct, align 8
  %i = alloca i32, align 4
  %new_argc = alloca i32, align 4
  %5 = alloca i8*
  %list = alloca %struct.obj_struct, align 8
  %j = alloca i32, align 4
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca i32
  %res = alloca %struct.obj_struct, align 8
  %11 = alloca %struct.obj_struct, align 8
  %12 = alloca %struct.obj_struct, align 8
  %i1 = alloca i64, align 8
  %13 = alloca %struct.obj_struct, align 8
  %14 = alloca %struct.obj_struct, align 8
  %15 = alloca %struct.obj_struct, align 8
  %16 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %18 = load %struct.smpType_struct** %17, align 8
  %19 = getelementptr inbounds %struct.smpType_struct* %18, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

; <label>:23                                      ; preds = %0
  %24 = bitcast %struct.obj_struct* %4 to i8*
  %25 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_function, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %195

; <label>:26                                      ; preds = %0
  %27 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.smpFunction_struct*
  %30 = bitcast %struct.smpFunction_struct* %fun_core to i8*
  %31 = bitcast %struct.smpFunction_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 40, i32 8, i1 false)
  %32 = bitcast %struct.smpFunction_struct* %fun_core to i8*
  %33 = getelementptr i8* %32, i32 24
  %34 = bitcast i8* %33 to i32*
  %35 = load i32* %34, align 8
  %36 = and i32 %35, 65535
  %37 = shl i32 %36, 16
  %38 = ashr i32 %37, 16
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %new_argc, align 4
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %5
  %41 = load i32* %new_argc, align 4
  %42 = zext i32 %41 to i64
  %43 = mul i64 32, %42
  %44 = alloca i8, i64 %43, align 16
  %45 = bitcast i8* %44 to %struct.obj_struct*
  store i32 0, i32* %i, align 4
  br label %46

; <label>:46                                      ; preds = %150, %26
  %47 = load i32* %i, align 4
  %48 = load i32* %new_argc, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %153

; <label>:50                                      ; preds = %46
  %51 = load i32* %i, align 4
  %52 = load i32* %1, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %83

; <label>:54                                      ; preds = %50
  %55 = load i32* %i, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.smpFunction_struct* %fun_core, i32 0, i32 2
  %59 = load %struct.argspec_struct** %58, align 8
  %60 = getelementptr inbounds %struct.argspec_struct* %59, i64 %57
  %61 = bitcast %struct.argspec_struct* %60 to i8*
  %62 = getelementptr i8* %61, i32 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32* %63, align 8
  %65 = lshr i32 %64, 1
  %66 = and i32 %65, 1
  %67 = shl i32 %66, 31
  %68 = ashr i32 %67, 31
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

; <label>:70                                      ; preds = %54
  %71 = load i32* %i, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.obj_struct* %45, i64 %72
  %74 = load i32* %i, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.smpFunction_struct* %fun_core, i32 0, i32 2
  %78 = load %struct.argspec_struct** %77, align 8
  %79 = getelementptr inbounds %struct.argspec_struct* %78, i64 %76
  %80 = getelementptr inbounds %struct.argspec_struct* %79, i32 0, i32 2
  %81 = bitcast %struct.obj_struct* %73 to i8*
  %82 = bitcast %struct.obj_struct* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 32, i32 8, i1 false)
  br label %149

; <label>:83                                      ; preds = %54, %50
  %84 = load i32* %i, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.smpFunction_struct* %fun_core, i32 0, i32 2
  %88 = load %struct.argspec_struct** %87, align 8
  %89 = getelementptr inbounds %struct.argspec_struct* %88, i64 %86
  %90 = bitcast %struct.argspec_struct* %89 to i8*
  %91 = getelementptr i8* %90, i32 48
  %92 = bitcast i8* %91 to i32*
  %93 = load i32* %92, align 8
  %94 = and i32 %93, 1
  %95 = shl i32 %94, 31
  %96 = ashr i32 %95, 31
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %124

; <label>:98                                      ; preds = %83
  %99 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %100 = load i32* %1, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %j, align 4
  br label %102

; <label>:102                                     ; preds = %115, %98
  %103 = load i32* %j, align 4
  %104 = load i32* %i, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %118

; <label>:106                                     ; preds = %102
  %107 = load i32* %j, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.obj_struct** %2, align 8
  %110 = getelementptr inbounds %struct.obj_struct* %109, i64 %108
  %111 = bitcast %struct.obj_struct* %6 to i8*
  %112 = bitcast %struct.obj_struct* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 32, i32 8, i1 false)
  %113 = bitcast %struct.obj_struct* %7 to i8*
  %114 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 32, i32 8, i1 false)
  call void @smpObject_cons_c(%struct.obj_struct* sret %list, %struct.obj_struct* byval %6, %struct.obj_struct* byval %7)
  br label %115

; <label>:115                                     ; preds = %106
  %116 = load i32* %j, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %j, align 4
  br label %102

; <label>:118                                     ; preds = %102
  %119 = load i32* %i, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.obj_struct* %45, i64 %120
  %122 = bitcast %struct.obj_struct* %121 to i8*
  %123 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 32, i32 8, i1 false)
  br label %153

; <label>:124                                     ; preds = %83
  %125 = load i32* %i, align 4
  %126 = load i32* %1, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %137

; <label>:128                                     ; preds = %124
  call void @smp_getclass(%struct.obj_struct* sret %9, i8* getelementptr inbounds ([14 x i8]* @.str21, i32 0, i32 0))
  %129 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %130 = load %struct.smpType_struct** %129, align 8
  %131 = getelementptr inbounds %struct.smpType_struct* %130, i32 0, i32 0
  %132 = load i8** %131, align 8
  %133 = getelementptr inbounds %struct.smpFunction_struct* %fun_core, i32 0, i32 1
  %134 = load i8** %133, align 8
  %135 = load i32* %new_argc, align 4
  %136 = load i32* %1, align 4
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %8, %struct.obj_struct* byval %9, i8* getelementptr inbounds ([61 x i8]* @.str126, i32 0, i32 0), i8* %132, i8* %134, i32 %135, i32 %136)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %8)
  store i32 1, i32* %10
  br label %193

; <label>:137                                     ; preds = %124
  %138 = load i32* %i, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.obj_struct* %45, i64 %139
  %141 = load i32* %i, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.obj_struct** %2, align 8
  %144 = getelementptr inbounds %struct.obj_struct* %143, i64 %142
  %145 = bitcast %struct.obj_struct* %140 to i8*
  %146 = bitcast %struct.obj_struct* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 32, i32 8, i1 false)
  br label %147

; <label>:147                                     ; preds = %137
  br label %148

; <label>:148                                     ; preds = %147
  br label %149

; <label>:149                                     ; preds = %148, %70
  br label %150

; <label>:150                                     ; preds = %149
  %151 = load i32* %i, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %i, align 4
  br label %46

; <label>:153                                     ; preds = %118, %46
  %154 = getelementptr inbounds %struct.smpFunction_struct* %fun_core, i32 0, i32 4
  %155 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %154, align 8
  %156 = bitcast %struct.obj_struct* %11 to i8*
  %157 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 32, i32 8, i1 false)
  %158 = load i32* %new_argc, align 4
  call void %155(%struct.obj_struct* sret %res, %struct.obj_struct* byval %11, i32 %158, %struct.obj_struct* %45)
  %159 = bitcast %struct.obj_struct* %12 to i8*
  %160 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 32, i32 8, i1 false)
  %161 = call i32 @smp_thrown_exceptionp_c(%struct.obj_struct* byval %12)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %190

; <label>:163                                     ; preds = %153
  store i64 0, i64* %i1, align 8
  br label %164

; <label>:164                                     ; preds = %186, %163
  %165 = load i64* %i1, align 8
  %166 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %167 = load i8** %166, align 8
  %168 = bitcast i8* %167 to %struct.smpThrown_struct*
  %169 = getelementptr inbounds %struct.smpThrown_struct* %168, i32 0, i32 2
  %170 = load i64* %169, align 8
  %171 = icmp ult i64 %165, %170
  br i1 %171, label %172, label %189

; <label>:172                                     ; preds = %164
  %173 = load i64* %i1, align 8
  %174 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %175 = load i8** %174, align 8
  %176 = bitcast i8* %175 to %struct.smpThrown_struct*
  %177 = getelementptr inbounds %struct.smpThrown_struct* %176, i32 0, i32 1
  %178 = load %struct.obj_struct** %177, align 8
  %179 = getelementptr inbounds %struct.obj_struct* %178, i64 %173
  %180 = bitcast %struct.obj_struct* %13 to i8*
  %181 = bitcast %struct.obj_struct* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 32, i32 8, i1 false)
  %182 = bitcast %struct.obj_struct* %14 to i8*
  %183 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* %183, i64 32, i32 8, i1 false)
  %184 = bitcast %struct.obj_struct* %15 to i8*
  %185 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %185, i64 32, i32 8, i1 false)
  call void @smpException_backtrace_add_now(%struct.obj_struct* sret %16, %struct.obj_struct* byval %13, %struct.obj_struct* byval %14, %struct.obj_struct* byval %15)
  br label %186

; <label>:186                                     ; preds = %172
  %187 = load i64* %i1, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %i1, align 8
  br label %164

; <label>:189                                     ; preds = %164
  br label %190

; <label>:190                                     ; preds = %189, %153
  %191 = bitcast %struct.obj_struct* %agg.result to i8*
  %192 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %191, i8* %192, i64 32, i32 8, i1 false)
  store i32 1, i32* %10
  br label %193

; <label>:193                                     ; preds = %190, %128
  %194 = load i8** %5
  call void @llvm.stackrestore(i8* %194)
  br label %195

; <label>:195                                     ; preds = %193, %23
  ret void
}

define void @smpObject_getclass(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %4 = load %struct.smpType_struct** %3, align 8
  %5 = getelementptr inbounds %struct.smpType_struct* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  call void @smp_getclass(%struct.obj_struct* sret %agg.result, i8* %6)
  ret void
}

define void @smpObject_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpObject_get_fun_rec(%struct.obj_struct* sret %agg.result, %struct.smpType_struct* %type, i8* %name, i32 %instance_funp) nounwind {
  %1 = alloca %struct.smpType_struct*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %fun = alloca %struct.obj_struct, align 8
  %hash = alloca %struct.minihash_struct*, align 8
  %i = alloca i64, align 8
  store %struct.smpType_struct* %type, %struct.smpType_struct** %1, align 8
  store i8* %name, i8** %2, align 8
  store i32 %instance_funp, i32* %3, align 4
  %4 = load %struct.smpType_struct** %1, align 8
  %5 = icmp eq %struct.smpType_struct* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %83

; <label>:8                                       ; preds = %0
  store %struct.minihash_struct* null, %struct.minihash_struct** %hash, align 8
  %9 = load i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %8
  %12 = load %struct.smpType_struct** %1, align 8
  %13 = getelementptr inbounds %struct.smpType_struct* %12, i32 0, i32 5
  %14 = load %struct.minihash_struct** %13, align 8
  store %struct.minihash_struct* %14, %struct.minihash_struct** %hash, align 8
  br label %19

; <label>:15                                      ; preds = %8
  %16 = load %struct.smpType_struct** %1, align 8
  %17 = getelementptr inbounds %struct.smpType_struct* %16, i32 0, i32 7
  %18 = load %struct.minihash_struct** %17, align 8
  store %struct.minihash_struct* %18, %struct.minihash_struct** %hash, align 8
  br label %19

; <label>:19                                      ; preds = %15, %11
  %20 = load %struct.minihash_struct** %hash, align 8
  %21 = load i8** %2, align 8
  %22 = call i32 @minihash_containsp(%struct.minihash_struct* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

; <label>:24                                      ; preds = %19
  %25 = load %struct.minihash_struct** %hash, align 8
  %26 = load i8** %2, align 8
  call void @minihash_get(%struct.obj_struct* sret %fun, %struct.minihash_struct* %25, i8* %26)
  %27 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %28 = load %struct.smpType_struct** %27, align 8
  %29 = getelementptr inbounds %struct.smpType_struct* %28, i32 0, i32 0
  %30 = load i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %24
  %36 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %37 = load %struct.smpType_struct** %36, align 8
  %38 = getelementptr inbounds %struct.smpType_struct* %37, i32 0, i32 0
  %39 = load i8** %38, align 8
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([29 x i8]* @.str29, i32 0, i32 0), i8* %39)
  br label %40

; <label>:40                                      ; preds = %35, %24
  %41 = bitcast %struct.obj_struct* %agg.result to i8*
  %42 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  br label %83

; <label>:43                                      ; preds = %19
  %44 = load %struct.smpType_struct** %1, align 8
  %45 = getelementptr inbounds %struct.smpType_struct* %44, i32 0, i32 3
  %46 = load %struct.smpType_struct*** %45, align 8
  %47 = icmp eq %struct.smpType_struct** %46, null
  br i1 %47, label %48, label %50

; <label>:48                                      ; preds = %43
  %49 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %83

; <label>:50                                      ; preds = %43
  store i64 0, i64* %i, align 8
  br label %51

; <label>:51                                      ; preds = %78, %50
  %52 = load i64* %i, align 8
  %53 = load %struct.smpType_struct** %1, align 8
  %54 = getelementptr inbounds %struct.smpType_struct* %53, i32 0, i32 4
  %55 = load i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %81

; <label>:57                                      ; preds = %51
  %58 = load i64* %i, align 8
  %59 = load %struct.smpType_struct** %1, align 8
  %60 = getelementptr inbounds %struct.smpType_struct* %59, i32 0, i32 3
  %61 = load %struct.smpType_struct*** %60, align 8
  %62 = getelementptr inbounds %struct.smpType_struct** %61, i64 %58
  %63 = load %struct.smpType_struct** %62
  %64 = load i8** %2, align 8
  %65 = load i32* %3, align 4
  call void @smpObject_get_fun_rec(%struct.obj_struct* sret %fun, %struct.smpType_struct* %63, i8* %64, i32 %65)
  %66 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %67 = load %struct.smpType_struct** %66, align 8
  %68 = getelementptr inbounds %struct.smpType_struct* %67, i32 0, i32 1
  %69 = load i32* %68, align 4
  %70 = load i32* @smpType_id_nil, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

; <label>:74                                      ; preds = %57
  %75 = bitcast %struct.obj_struct* %agg.result to i8*
  %76 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 32, i32 8, i1 false)
  br label %83

; <label>:77                                      ; preds = %57
  br label %78

; <label>:78                                      ; preds = %77
  %79 = load i64* %i, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %i, align 8
  br label %51

; <label>:81                                      ; preds = %51
  %82 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %83

; <label>:83                                      ; preds = %81, %74, %48, %40, %6
  ret void
}

define void @smpObject_hash(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %hash = alloca i64, align 8
  %key = alloca i8*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = ptrtoint i8* %4 to i64
  %6 = ashr i64 %5, 3
  store i64 %6, i64* %hash, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 0
  %10 = load i8** %9, align 8
  %11 = getelementptr inbounds i8* %10, i64 -1
  store i8* %11, i8** %key, align 8
  br label %12

; <label>:12                                      ; preds = %17, %0
  %13 = load i8** %key, align 8
  %14 = getelementptr inbounds i8* %13, i32 1
  store i8* %14, i8** %key, align 8
  %15 = load i8* %14
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %27

; <label>:17                                      ; preds = %12
  %18 = load i64* %hash, align 8
  %19 = shl i64 %18, 5
  %20 = load i64* %hash, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i8** %key, align 8
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  store i64 %26, i64* %hash, align 8
  br label %12

; <label>:27                                      ; preds = %12
  %28 = load i64* %hash, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %agg.result, i64 %28)
  ret void
}

define void @smpInteger_init_clong(%struct.obj_struct* sret %agg.result, i64 %x) nounwind {
  %1 = alloca i64, align 8
  %z = alloca [1 x %5]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store i64 %x, i64* %1, align 8
  %2 = call i8* @smp_malloc(i64 16)
  %3 = bitcast i8* %2 to [1 x %5]*
  store [1 x %5]* %3, [1 x %5]** %z, align 8
  %4 = load [1 x %5]** %z, align 8
  %5 = getelementptr inbounds [1 x %5]* %4, i32 0, i32 0
  %6 = load i64* %1, align 8
  call void @__gmpz_init_set_si(%5* %5, i64 %6)
  %7 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %res, [1 x %5]* %7)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  %9 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  ret void
}

define void @smpObject_instancep(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = load %struct.obj_struct** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %7, i64 0
  %9 = getelementptr inbounds %struct.obj_struct* %8, i32 0, i32 2
  %10 = load %struct.smpType_struct** %9, align 8
  %11 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %10, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 2
  %17 = load %struct.smpType_struct** %16, align 8
  %18 = getelementptr inbounds %struct.smpType_struct* %17, i32 0, i32 0
  %19 = load i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22                                      ; preds = %13
  %23 = load %struct.obj_struct** %2, align 8
  %24 = getelementptr inbounds %struct.obj_struct* %23, i64 0
  %25 = bitcast %struct.obj_struct* %agg.result to i8*
  %26 = bitcast %struct.obj_struct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  br label %41

; <label>:27                                      ; preds = %13
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  %28 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %29 = load i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.smpType_struct*
  %31 = load %struct.obj_struct** %2, align 8
  %32 = getelementptr inbounds %struct.obj_struct* %31, i64 0
  %33 = bitcast %struct.obj_struct* %5 to i8*
  %34 = bitcast %struct.obj_struct* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %30, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %41

; <label>:35                                      ; preds = %0
  %36 = bitcast %struct.obj_struct* %6 to i8*
  %37 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  %38 = load i32* %1, align 4
  %39 = load %struct.obj_struct** %2, align 8
  %40 = call i32 @smpObject_instancep_cint(%struct.obj_struct* byval %6, i32 %38, %struct.obj_struct* %39)
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %40)
  br label %41

; <label>:41                                      ; preds = %35, %27, %22
  ret void
}

define i32 @smpObject_instancep_cstr(%struct.smpType_struct* %objtype, i8* %type) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smpType_struct*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.smpType_struct* %objtype, %struct.smpType_struct** %2, align 8
  store i8* %type, i8** %3, align 8
  %4 = load %struct.smpType_struct** %2, align 8
  %5 = getelementptr inbounds %struct.smpType_struct* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  %7 = load i8** %3, align 8
  %8 = call i32 @strcmp(i8* %6, i8* %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i32 1, i32* %1
  br label %34

; <label>:11                                      ; preds = %0
  store i64 0, i64* %i, align 8
  br label %12

; <label>:12                                      ; preds = %30, %11
  %13 = load i64* %i, align 8
  %14 = load %struct.smpType_struct** %2, align 8
  %15 = getelementptr inbounds %struct.smpType_struct* %14, i32 0, i32 4
  %16 = load i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %33

; <label>:18                                      ; preds = %12
  %19 = load i64* %i, align 8
  %20 = load %struct.smpType_struct** %2, align 8
  %21 = getelementptr inbounds %struct.smpType_struct* %20, i32 0, i32 3
  %22 = load %struct.smpType_struct*** %21, align 8
  %23 = getelementptr inbounds %struct.smpType_struct** %22, i64 %19
  %24 = load %struct.smpType_struct** %23
  %25 = load i8** %3, align 8
  %26 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %18
  store i32 1, i32* %1
  br label %34

; <label>:29                                      ; preds = %18
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i64* %i, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %i, align 8
  br label %12

; <label>:33                                      ; preds = %12
  store i32 0, i32* %1
  br label %34

; <label>:34                                      ; preds = %33, %28, %10
  %35 = load i32* %1
  ret i32 %35
}

define void @smpTypeError_init(%struct.obj_struct* sret %agg.result, %struct.smpType_struct* %expected, %struct.obj_struct* byval %found) nounwind {
  %1 = alloca %struct.smpType_struct*, align 8
  %res = alloca %struct.smpTypeError_struct, align 8
  %wrapper = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store %struct.smpType_struct* %expected, %struct.smpType_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 0
  store i8* null, i8** %3, align 8
  %4 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 1
  %5 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %6 = load %struct.smpType_struct** %1, align 8
  %7 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 2
  store %struct.smpType_struct* %6, %struct.smpType_struct** %7, align 8
  %8 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 3
  %9 = bitcast %struct.obj_struct* %8 to i8*
  %10 = bitcast %struct.obj_struct* %found to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([10 x i8]* @.str47, i32 0, i32 0))
  %11 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smpType_struct* %13)
  %14 = call i8* @smp_malloc(i64 80)
  %15 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smpTypeError_struct*
  %19 = bitcast %struct.smpTypeError_struct* %18 to i8*
  %20 = bitcast %struct.smpTypeError_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 80, i32 8, i1 false)
  %21 = bitcast %struct.obj_struct* %agg.result to i8*
  %22 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  ret void
}

define i32 @smpObject_instancep_cint(%struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %objtype = alloca %struct.smpType_struct*, align 8
  %type = alloca %struct.smpType_struct, align 8
  %3 = alloca %struct.smpType_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %5 = load %struct.smpType_struct** %4, align 8
  store %struct.smpType_struct* %5, %struct.smpType_struct** %objtype, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smpType_struct*
  %11 = bitcast %struct.smpType_struct* %type to i8*
  %12 = bitcast %struct.smpType_struct* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 64, i32 8, i1 false)
  %13 = load %struct.smpType_struct** %objtype, align 8
  %14 = bitcast %struct.smpType_struct* %3 to i8*
  %15 = bitcast %struct.smpType_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 64, i32 8, i1 false)
  %16 = call i32 @smpObject_instancep_c(%struct.smpType_struct* %13, %struct.smpType_struct* byval %3)
  ret i32 %16
}

define i32 @smpObject_instancep_c(%struct.smpType_struct* %objtype, %struct.smpType_struct* byval %type) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smpType_struct*, align 8
  %i = alloca i64, align 8
  %3 = alloca %struct.smpType_struct, align 8
  store %struct.smpType_struct* %objtype, %struct.smpType_struct** %2, align 8
  %4 = load %struct.smpType_struct** %2, align 8
  %5 = icmp eq %struct.smpType_struct* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %1
  br label %39

; <label>:7                                       ; preds = %0
  %8 = load %struct.smpType_struct** %2, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 1
  %12 = load i32* %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %7
  store i32 1, i32* %1
  br label %39

; <label>:15                                      ; preds = %7
  store i64 0, i64* %i, align 8
  br label %16

; <label>:16                                      ; preds = %35, %15
  %17 = load i64* %i, align 8
  %18 = load %struct.smpType_struct** %2, align 8
  %19 = getelementptr inbounds %struct.smpType_struct* %18, i32 0, i32 4
  %20 = load i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %38

; <label>:22                                      ; preds = %16
  %23 = load i64* %i, align 8
  %24 = load %struct.smpType_struct** %2, align 8
  %25 = getelementptr inbounds %struct.smpType_struct* %24, i32 0, i32 3
  %26 = load %struct.smpType_struct*** %25, align 8
  %27 = getelementptr inbounds %struct.smpType_struct** %26, i64 %23
  %28 = load %struct.smpType_struct** %27
  %29 = bitcast %struct.smpType_struct* %3 to i8*
  %30 = bitcast %struct.smpType_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 64, i32 8, i1 false)
  %31 = call i32 @smpObject_instancep_c(%struct.smpType_struct* %28, %struct.smpType_struct* byval %3)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %22
  store i32 1, i32* %1
  br label %39

; <label>:34                                      ; preds = %22
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i64* %i, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %i, align 8
  br label %16

; <label>:38                                      ; preds = %16
  store i32 0, i32* %1
  br label %39

; <label>:39                                      ; preds = %38, %33, %14, %6
  %40 = load i32* %1
  ret i32 %40
}

define void @smpObject_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %4 = load %struct.smpType_struct** %3, align 8
  %5 = getelementptr inbounds %struct.smpType_struct* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %8 = load i8** %7, align 8
  %9 = ptrtoint i8* %8 to i64
  call void (%struct.obj_struct*, i8*, ...)* @smpString_init_fmt(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([11 x i8]* @.str30, i32 0, i32 0), i8* %6, i64 %9)
  ret void
}

define void @smpString_init_fmt(%struct.obj_struct* sret %agg.result, i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %str = alloca i8*, align 8
  store i8* %format, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = load i8** %1, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %6 = call i32 @vasprintf(i8** %str, i8* %4, %struct.__va_list_tag* %5)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_end(i8* %8)
  call void @smpString_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  ret void
}

define void @smpObject_to_s_class(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpType_struct*
  %6 = getelementptr inbounds %struct.smpType_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smpString_init(%struct.obj_struct* sret %agg.result, i8* %7)
  ret void
}

define void @smpString_init(%struct.obj_struct* sret %agg.result, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %res = alloca %struct.obj_struct, align 8
  store i8* %str, i8** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_string)
  %2 = load i8** %1, align 8
  %3 = call i32 @obj_init_str(%struct.obj_struct* %res, i8* %2)
  %4 = bitcast %struct.obj_struct* %agg.result to i8*
  %5 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  ret void
}

define void @smpObject_type(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %4 = load %struct.smpType_struct** %3, align 8
  %5 = getelementptr inbounds %struct.smpType_struct* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  call void @smp_getclass(%struct.obj_struct* sret %agg.result, i8* %6)
  ret void
}

define void @smpObject_types_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load %struct.obj_struct** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %7, i64 0
  %9 = bitcast %struct.obj_struct* %4 to i8*
  %10 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @obj_types_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  ret void
}

define void @smpObject_varcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %name) nounwind {
  %1 = alloca i8*, align 8
  %res = alloca %struct.obj_struct, align 8
  %hash = alloca %struct.minihash_struct*, align 8
  %var = alloca %struct.obj_struct, align 8
  store i8* %name, i8** %1, align 8
  %2 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  store %struct.minihash_struct* null, %struct.minihash_struct** %hash, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %4 = load %struct.smpType_struct** %3, align 8
  %5 = getelementptr inbounds %struct.smpType_struct* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = load i32* @smpType_id_class, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smpType_struct*
  %13 = getelementptr inbounds %struct.smpType_struct* %12, i32 0, i32 8
  %14 = load %struct.minihash_struct** %13, align 8
  store %struct.minihash_struct* %14, %struct.minihash_struct** %hash, align 8
  br label %20

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.standardcore_struct*
  %19 = getelementptr inbounds %struct.standardcore_struct* %18, i32 0, i32 0
  store %struct.minihash_struct* %19, %struct.minihash_struct** %hash, align 8
  br label %20

; <label>:20                                      ; preds = %15, %9
  %21 = load %struct.minihash_struct** %hash, align 8
  %22 = load i8** %1, align 8
  call void @minihash_get(%struct.obj_struct* sret %var, %struct.minihash_struct* %21, i8* %22)
  %23 = bitcast %struct.obj_struct* %res to i8*
  %24 = bitcast %struct.obj_struct* %var to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = bitcast %struct.obj_struct* %agg.result to i8*
  %26 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  ret void
}

define void @smpObject_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  ret void
}

define void @smpObject_write_class(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  ret void
}

define i32 @scope_init() nounwind {
  store i64 1, i64* @scope_length, align 8
  %1 = call i64 @next_power_of_2(i64 4)
  %2 = mul i64 32, %1
  %3 = call i8* @smp_malloc(i64 %2)
  %4 = bitcast i8* %3 to %struct.minihash_struct*
  store %struct.minihash_struct* %4, %struct.minihash_struct** @scope_stack, align 8
  %5 = load %struct.minihash_struct** @scope_stack, align 8
  %6 = getelementptr inbounds %struct.minihash_struct* %5, i64 0
  call void @minihash_init(%struct.minihash_struct* sret %6)
  call void @minihash_init(%struct.minihash_struct* sret @scope_classes)
  ret i32 0
}

define i32 @scope_push() nounwind {
  %1 = load i64* @scope_length, align 8
  %2 = icmp uge i64 %1, 4
  br i1 %2, label %3, label %15

; <label>:3                                       ; preds = %0
  %4 = load i64* @scope_length, align 8
  %5 = call i32 @is_power_of_2(i64 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

; <label>:7                                       ; preds = %3
  %8 = load %struct.minihash_struct** @scope_stack, align 8
  %9 = bitcast %struct.minihash_struct* %8 to i8*
  %10 = load i64* @scope_length, align 8
  %11 = call i64 @next_power_of_2(i64 %10)
  %12 = mul i64 32, %11
  %13 = call i8* @smp_realloc(i8* %9, i64 %12)
  %14 = bitcast i8* %13 to %struct.minihash_struct*
  store %struct.minihash_struct* %14, %struct.minihash_struct** @scope_stack, align 8
  br label %15

; <label>:15                                      ; preds = %7, %3, %0
  %16 = load i64* @scope_length, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* @scope_length, align 8
  %18 = load %struct.minihash_struct** @scope_stack, align 8
  %19 = getelementptr inbounds %struct.minihash_struct* %18, i64 %16
  call void @minihash_init(%struct.minihash_struct* sret %19)
  %20 = load i64* @scope_length, align 8
  %21 = sub i64 %20, 1
  %22 = load %struct.minihash_struct** @scope_stack, align 8
  %23 = getelementptr inbounds %struct.minihash_struct* %22, i64 %21
  %24 = load i64* @scope_length, align 8
  %25 = sub i64 %24, 2
  %26 = load %struct.minihash_struct** @scope_stack, align 8
  %27 = getelementptr inbounds %struct.minihash_struct* %26, i64 %25
  %28 = call i32 @minihash_copy(%struct.minihash_struct* %23, %struct.minihash_struct* %27)
  ret i32 0
}

define i32 @scope_pop() nounwind {
  %1 = load i64* @scope_length, align 8
  %2 = add i64 %1, -1
  store i64 %2, i64* @scope_length, align 8
  %3 = load %struct.minihash_struct** @scope_stack, align 8
  %4 = getelementptr inbounds %struct.minihash_struct* %3, i64 %2
  %5 = call i32 @minihash_clear(%struct.minihash_struct* %4)
  ret i32 0
}

define void @scope_get(%struct.obj_struct* sret %agg.result, i8* %name) nounwind {
  %1 = alloca i8*, align 8
  store i8* %name, i8** %1, align 8
  %2 = load i64* @scope_length, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %10

; <label>:5                                       ; preds = %0
  %6 = load i64* @scope_length, align 8
  %7 = sub i64 %6, 1
  %8 = load %struct.minihash_struct** @scope_stack, align 8
  %9 = getelementptr inbounds %struct.minihash_struct* %8, i64 %7
  br label %10

; <label>:10                                      ; preds = %5, %4
  %11 = phi %struct.minihash_struct* [ null, %4 ], [ %9, %5 ]
  %12 = load i8** %1, align 8
  call void @minihash_get(%struct.obj_struct* sret %agg.result, %struct.minihash_struct* %11, i8* %12)
  ret void
}

define void @scope_self(%struct.obj_struct* sret %agg.result) nounwind {
  %1 = load i64* @scope_length, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %9

; <label>:4                                       ; preds = %0
  %5 = load i64* @scope_length, align 8
  %6 = sub i64 %5, 1
  %7 = load %struct.minihash_struct** @scope_stack, align 8
  %8 = getelementptr inbounds %struct.minihash_struct* %7, i64 %6
  br label %9

; <label>:9                                       ; preds = %4, %3
  %10 = phi %struct.minihash_struct* [ null, %3 ], [ %8, %4 ]
  call void @minihash_get(%struct.obj_struct* sret %agg.result, %struct.minihash_struct* %10, i8* getelementptr inbounds ([5 x i8]* @.str32, i32 0, i32 0))
  ret void
}

define i32 @scope_clear() nounwind {
  %1 = load i64* @scope_length, align 8
  %2 = sub i64 %1, 1
  %3 = load %struct.minihash_struct** @scope_stack, align 8
  %4 = getelementptr inbounds %struct.minihash_struct* %3, i64 %2
  %5 = call i32 @minihash_clear(%struct.minihash_struct* %4)
  br label %6

; <label>:6                                       ; preds = %9, %0
  %7 = load i64* @scope_length, align 8
  %8 = icmp ugt i64 %7, 1
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %6
  %10 = load i64* @scope_length, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* @scope_length, align 8
  %12 = sub i64 %11, 1
  %13 = load %struct.minihash_struct** @scope_stack, align 8
  %14 = getelementptr inbounds %struct.minihash_struct* %13, i64 %12
  %15 = call i32 @minihash_clear(%struct.minihash_struct* %14)
  br label %6

; <label>:16                                      ; preds = %6
  %17 = load i64* @scope_length, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* @scope_length, align 8
  ret i32 0
}

define i32 @init_smp_classes() nounwind {
  store i32 0, i32* @initialized_classesp, align 4
  %1 = call i32 @init_fundamental_classes()
  %2 = call i32 @init_required_classes()
  %3 = call i32 @smpNumber_create_class()
  %4 = call i32 @smpInteger_create_class()
  %5 = call i32 @smpFloat_create_class()
  store i32 1, i32* @initialized_classesp, align 4
  ret i32 0
}

define i32 @init_required_classes() nounwind {
  %1 = call i32 @smpGlobal_create_class()
  %2 = call i32 @smpRegex_create_class()
  %3 = call i32 @smpArray_create_class()
  %4 = call i32 @smpHash_create_class()
  %5 = call i32 @smpSymbol_create_class()
  ret i32 0
}

define i32 @init_fundamental_classes() nounwind {
  %object = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %boolclass = alloca %struct.obj_struct, align 8
  %nil_parents_length = alloca i64, align 8
  %nil_parents = alloca %struct.smpType_struct**, align 8
  %nilclass = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %exc = alloca %struct.obj_struct, align 8
  %smpType_compiletime = alloca %struct.smpType_struct*, align 8
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
  store i32 1, i32* @smpType_next_id, align 4
  call void @minihash_init(%struct.minihash_struct* sret @smpType_ids)
  %74 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0), %struct.smpType_struct* null, i32 128)
  store i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0), i8** getelementptr inbounds (%struct.smpType_struct* @smpType_id, i32 0, i32 0), align 8
  %75 = load i32* @smpType_next_id, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @smpType_next_id, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.smpType_struct* @smpType_id, i32 0, i32 1), align 4
  store i64 1, i64* getelementptr inbounds (%struct.smpType_struct* @smpType_id, i32 0, i32 4), align 8
  %77 = load i64* getelementptr inbounds (%struct.smpType_struct* @smpType_id, i32 0, i32 4), align 8
  %78 = mul i64 8, %77
  %79 = call i8* @smp_malloc(i64 %78)
  %80 = bitcast i8* %79 to %struct.smpType_struct**
  store %struct.smpType_struct** %80, %struct.smpType_struct*** getelementptr inbounds (%struct.smpType_struct* @smpType_id, i32 0, i32 3), align 8
  %81 = load %struct.smpType_struct*** getelementptr inbounds (%struct.smpType_struct* @smpType_id, i32 0, i32 3), align 8
  %82 = getelementptr inbounds %struct.smpType_struct** %81, i64 0
  store %struct.smpType_struct* @smpType_object, %struct.smpType_struct** %82
  store %struct.minihash_struct* null, %struct.minihash_struct** getelementptr inbounds (%struct.smpType_struct* @smpType_id, i32 0, i32 5), align 8
  store %struct.minihash_struct* null, %struct.minihash_struct** getelementptr inbounds (%struct.smpType_struct* @smpType_id, i32 0, i32 6), align 8
  call void @smp_getclass(%struct.obj_struct* sret %object, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  %83 = getelementptr inbounds %struct.obj_struct* %object, i32 0, i32 3
  %84 = load i8** %83, align 8
  %85 = bitcast i8* %84 to %struct.smpType_struct*
  %86 = bitcast %struct.smpType_struct* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_object to i8*), i8* %86, i64 64, i32 8, i1 false)
  %87 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  %88 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %89 = load i8** %88, align 8
  %90 = bitcast i8* %89 to %struct.smpType_struct*
  %91 = bitcast %struct.smpType_struct* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_class to i8*), i8* %91, i64 64, i32 8, i1 false)
  %92 = load i32* getelementptr inbounds (%struct.smpType_struct* @smpType_class, i32 0, i32 1), align 4
  store i32 %92, i32* @smpType_id_class, align 4
  %93 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %94 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %95 = load i8** %94, align 8
  %96 = bitcast i8* %95 to %struct.smpType_struct*
  %97 = bitcast %struct.smpType_struct* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_function to i8*), i8* %97, i64 64, i32 8, i1 false)
  %98 = load i32* getelementptr inbounds (%struct.smpType_struct* @smpType_class, i32 0, i32 1), align 4
  store i32 %98, i32* @smpType_id_fun, align 4
  %99 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 160)
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0))
  %100 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 3
  %101 = load i8** %100, align 8
  %102 = bitcast i8* %101 to %struct.smpType_struct*
  %103 = bitcast %struct.smpType_struct* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_atom to i8*), i8* %103, i64 64, i32 8, i1 false)
  %104 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), %struct.smpType_struct* @smpType_atom, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %105 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %106 = load i8** %105, align 8
  %107 = bitcast i8* %106 to %struct.smpType_struct*
  %108 = bitcast %struct.smpType_struct* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_string to i8*), i8* %108, i64 64, i32 8, i1 false)
  %109 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), %struct.smpType_struct* @smpType_atom, i32 160)
  %110 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([11 x i8]* @.str37, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 160)
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([11 x i8]* @.str37, i32 0, i32 0))
  %111 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %112 = load i8** %111, align 8
  %113 = bitcast i8* %112 to %struct.smpType_struct*
  %114 = bitcast %struct.smpType_struct* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_collection to i8*), i8* %114, i64 64, i32 8, i1 false)
  %115 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0), %struct.smpType_struct* @smpType_collection, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0))
  %116 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 3
  %117 = load i8** %116, align 8
  %118 = bitcast i8* %117 to %struct.smpType_struct*
  %119 = bitcast %struct.smpType_struct* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_pair to i8*), i8* %119, i64 64, i32 8, i1 false)
  %120 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), %struct.smpType_struct* @smpType_pair, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %7, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0))
  %121 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 3
  %122 = load i8** %121, align 8
  %123 = bitcast i8* %122 to %struct.smpType_struct*
  %124 = bitcast %struct.smpType_struct* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_list to i8*), i8* %124, i64 64, i32 8, i1 false)
  %125 = load i32* getelementptr inbounds (%struct.smpType_struct* @smpType_list, i32 0, i32 1), align 4
  store i32 %125, i32* @smpType_id_list, align 4
  call void @smp_getclass(%struct.obj_struct* sret %boolclass, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0))
  store i64 2, i64* %nil_parents_length, align 8
  %126 = load i64* %nil_parents_length, align 8
  %127 = mul i64 8, %126
  %128 = call i8* @smp_malloc(i64 %127)
  %129 = bitcast i8* %128 to %struct.smpType_struct**
  store %struct.smpType_struct** %129, %struct.smpType_struct*** %nil_parents, align 8
  %130 = load %struct.smpType_struct*** %nil_parents, align 8
  %131 = getelementptr inbounds %struct.smpType_struct** %130, i64 0
  store %struct.smpType_struct* @smpType_list, %struct.smpType_struct** %131
  %132 = getelementptr inbounds %struct.obj_struct* %boolclass, i32 0, i32 3
  %133 = load i8** %132, align 8
  %134 = bitcast i8* %133 to %struct.smpType_struct*
  %135 = load %struct.smpType_struct*** %nil_parents, align 8
  %136 = getelementptr inbounds %struct.smpType_struct** %135, i64 1
  store %struct.smpType_struct* %134, %struct.smpType_struct** %136
  %137 = load %struct.smpType_struct*** %nil_parents, align 8
  %138 = load i64* %nil_parents_length, align 8
  %139 = call i32 @smpGlobal_class_multiple(i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), %struct.smpType_struct** %137, i64 %138, i32 144)
  call void @smp_getclass(%struct.obj_struct* sret %nilclass, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  %140 = getelementptr inbounds %struct.obj_struct* %nilclass, i32 0, i32 3
  %141 = load i8** %140, align 8
  %142 = bitcast i8* %141 to %struct.smpType_struct*
  %143 = bitcast %struct.smpType_struct* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_nil to i8*), i8* %143, i64 64, i32 8, i1 false)
  call void @obj_init(%struct.obj_struct* sret @smp_nil, %struct.smpType_struct* @smpType_nil)
  %144 = load i32* getelementptr inbounds (%struct.smpType_struct* @smpType_nil, i32 0, i32 1), align 4
  store i32 %144, i32* @smpType_id_nil, align 4
  %145 = load i32* bitcast (i8* getelementptr (i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i32 8) to i32*), align 8
  %146 = and i32 %145, -2
  %147 = or i32 %146, 1
  store i32 %147, i32* bitcast (i8* getelementptr (i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i32 8) to i32*), align 8
  %148 = getelementptr inbounds %struct.obj_struct* %boolclass, i32 0, i32 3
  %149 = load i8** %148, align 8
  %150 = bitcast i8* %149 to %struct.smpType_struct*
  %151 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([10 x i8]* @.str41, i32 0, i32 0), %struct.smpType_struct* %150, i32 144)
  call void @smp_getclass(%struct.obj_struct* sret %8, i8* getelementptr inbounds ([10 x i8]* @.str41, i32 0, i32 0))
  %152 = getelementptr inbounds %struct.obj_struct* %8, i32 0, i32 3
  %153 = load i8** %152, align 8
  %154 = bitcast i8* %153 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret @smp_true, %struct.smpType_struct* %154)
  %155 = load i32* bitcast (i8* getelementptr (i8* bitcast (%struct.obj_struct* @smp_true to i8*), i32 8) to i32*), align 8
  %156 = and i32 %155, -2
  %157 = or i32 %156, 1
  store i32 %157, i32* bitcast (i8* getelementptr (i8* bitcast (%struct.obj_struct* @smp_true to i8*), i32 8) to i32*), align 8
  %158 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %exc, i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0))
  %159 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 3
  %160 = load i8** %159, align 8
  %161 = bitcast i8* %160 to %struct.smpType_struct*
  %162 = bitcast %struct.smpType_struct* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_exception to i8*), i8* %162, i64 64, i32 8, i1 false)
  %163 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([13 x i8]* @.str43, i32 0, i32 0), %struct.smpType_struct* @smpType_exception, i32 0)
  %164 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([17 x i8]* @.str44, i32 0, i32 0), %struct.smpType_struct* @smpType_exception, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %9, i8* getelementptr inbounds ([13 x i8]* @.str43, i32 0, i32 0))
  %165 = getelementptr inbounds %struct.obj_struct* %9, i32 0, i32 3
  %166 = load i8** %165, align 8
  %167 = bitcast i8* %166 to %struct.smpType_struct*
  store %struct.smpType_struct* %167, %struct.smpType_struct** %smpType_compiletime, align 8
  %168 = load %struct.smpType_struct** %smpType_compiletime, align 8
  %169 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([14 x i8]* @.str21, i32 0, i32 0), %struct.smpType_struct* %168, i32 0)
  %170 = load %struct.smpType_struct** %smpType_compiletime, align 8
  %171 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([14 x i8]* @.str45, i32 0, i32 0), %struct.smpType_struct* %170, i32 0)
  %172 = load %struct.smpType_struct** %smpType_compiletime, align 8
  %173 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([12 x i8]* @.str46, i32 0, i32 0), %struct.smpType_struct* %172, i32 0)
  %174 = load %struct.smpType_struct** %smpType_compiletime, align 8
  %175 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([10 x i8]* @.str47, i32 0, i32 0), %struct.smpType_struct* %174, i32 0)
  %176 = load %struct.smpType_struct** %smpType_compiletime, align 8
  %177 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([21 x i8]* @.str26, i32 0, i32 0), %struct.smpType_struct* %176, i32 0)
  %178 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %10, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %179 = getelementptr inbounds %struct.obj_struct* %10, i32 0, i32 3
  %180 = load i8** %179, align 8
  %181 = bitcast i8* %180 to %struct.smpType_struct*
  %182 = bitcast %struct.smpType_struct* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_thrown to i8*), i8* %182, i64 64, i32 8, i1 false)
  %183 = load i32* getelementptr inbounds (%struct.smpType_struct* @smpType_thrown, i32 0, i32 1), align 4
  store i32 %183, i32* @smpType_id_thrown, align 4
  %184 = bitcast %struct.obj_struct* %11 to i8*
  %185 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %185, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %12, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_eq, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %13, %struct.obj_struct* byval %11, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str48, i32 0, i32 0), %struct.obj_struct* byval %12)
  %186 = bitcast %struct.obj_struct* %14 to i8*
  %187 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %15, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %16, %struct.obj_struct* byval %14, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %15)
  %188 = bitcast %struct.obj_struct* %17 to i8*
  %189 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %188, i8* %189, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %18, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_cons, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %19, %struct.obj_struct* byval %17, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str49, i32 0, i32 0), %struct.obj_struct* byval %18)
  %190 = bitcast %struct.obj_struct* %20 to i8*
  %191 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %21, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_cons, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %22, %struct.obj_struct* byval %20, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str50, i32 0, i32 0), %struct.obj_struct* byval %21)
  %192 = bitcast %struct.obj_struct* %23 to i8*
  %193 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %193, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %24, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_eq, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %25, %struct.obj_struct* byval %23, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), %struct.obj_struct* byval %24)
  %194 = bitcast %struct.obj_struct* %26 to i8*
  %195 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %194, i8* %195, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %27, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_eql, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %28, %struct.obj_struct* byval %26, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str51, i32 0, i32 0), %struct.obj_struct* byval %27)
  %196 = bitcast %struct.obj_struct* %29 to i8*
  %197 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %196, i8* %197, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %30, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %31, %struct.obj_struct* byval %29, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), %struct.obj_struct* byval %30)
  %198 = bitcast %struct.obj_struct* %32 to i8*
  %199 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %198, i8* %199, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %33, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %34, %struct.obj_struct* byval %32, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %33)
  %200 = bitcast %struct.obj_struct* %35 to i8*
  %201 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* %201, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %36, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %37, %struct.obj_struct* byval %35, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %36)
  %202 = bitcast %struct.obj_struct* %38 to i8*
  %203 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %202, i8* %203, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %39, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_to_s_class, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %40, %struct.obj_struct* byval %38, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %39)
  %204 = bitcast %struct.obj_struct* %41 to i8*
  %205 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* %205, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %42, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_type, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %43, %struct.obj_struct* byval %41, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0), %struct.obj_struct* byval %42)
  %206 = bitcast %struct.obj_struct* %44 to i8*
  %207 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* %207, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %45, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_types_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %46, %struct.obj_struct* byval %44, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str53, i32 0, i32 0), %struct.obj_struct* byval %45)
  %208 = bitcast %struct.obj_struct* %47 to i8*
  %209 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %208, i8* %209, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %48, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %49, %struct.obj_struct* byval %47, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %48)
  %210 = bitcast %struct.obj_struct* %50 to i8*
  %211 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* %211, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %51, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpObject_write_class, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %52, %struct.obj_struct* byval %50, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %51)
  %212 = bitcast %struct.obj_struct* %53 to i8*
  %213 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* %213, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %54, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpBool_and, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %55, %struct.obj_struct* byval %53, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str55, i32 0, i32 0), %struct.obj_struct* byval %54)
  %214 = bitcast %struct.obj_struct* %56 to i8*
  %215 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %214, i8* %215, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %57, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpBool_or, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %58, %struct.obj_struct* byval %56, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str56, i32 0, i32 0), %struct.obj_struct* byval %57)
  %216 = bitcast %struct.obj_struct* %59 to i8*
  %217 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %216, i8* %217, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %60, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpBool_xor, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %61, %struct.obj_struct* byval %59, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str57, i32 0, i32 0), %struct.obj_struct* byval %60)
  %218 = bitcast %struct.obj_struct* %62 to i8*
  %219 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %218, i8* %219, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %63, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpBool_and, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %64, %struct.obj_struct* byval %62, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str58, i32 0, i32 0), %struct.obj_struct* byval %63)
  %220 = bitcast %struct.obj_struct* %65 to i8*
  %221 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %66, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpBool_or, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %67, %struct.obj_struct* byval %65, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str59, i32 0, i32 0), %struct.obj_struct* byval %66)
  %222 = bitcast %struct.obj_struct* %68 to i8*
  %223 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* %223, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %69, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpType_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %70, %struct.obj_struct* byval %68, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %69)
  call void @smp_getclass(%struct.obj_struct* sret %71, i8* getelementptr inbounds ([10 x i8]* @.str41, i32 0, i32 0))
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %72, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smptrue_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %73, %struct.obj_struct* byval %71, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %72)
  %224 = call i32 @smpFunction_create_class()
  %225 = call i32 @smpCollection_create_class()
  %226 = call i32 @smpList_create_class()
  %227 = call i32 @smpNil_create_class()
  %228 = call i32 @smpPair_create_class()
  %229 = call i32 @smpThrown_create_class()
  %230 = call i32 @smpException_create_class()
  %231 = call i32 @smpstrcreate_class()
  ret i32 0
}

define i32 @smpGlobal_class(i8* %name, %struct.smpType_struct* %parent, i32 %flags) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smpType_struct*, align 8
  %4 = alloca i32, align 4
  %parents = alloca %struct.smpType_struct**, align 8
  %parents_length = alloca i64, align 8
  store i8* %name, i8** %2, align 8
  store %struct.smpType_struct* %parent, %struct.smpType_struct** %3, align 8
  store i32 %flags, i32* %4, align 4
  %5 = load %struct.smpType_struct** %3, align 8
  %6 = icmp ne %struct.smpType_struct* %5, null
  br i1 %6, label %7, label %19

; <label>:7                                       ; preds = %0
  %8 = load %struct.smpType_struct** %3, align 8
  %9 = bitcast %struct.smpType_struct* %8 to i8*
  %10 = getelementptr i8* %9, i32 12
  %11 = bitcast i8* %10 to i32*
  %12 = load i32* %11, align 4
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 1
  %15 = shl i32 %14, 31
  %16 = ashr i32 %15, 31
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %7
  store i32 1, i32* %1
  br label %34

; <label>:19                                      ; preds = %7, %0
  %20 = load %struct.smpType_struct** %3, align 8
  %21 = icmp eq %struct.smpType_struct* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  store %struct.smpType_struct** null, %struct.smpType_struct*** %parents, align 8
  store i64 0, i64* %parents_length, align 8
  br label %28

; <label>:23                                      ; preds = %19
  %24 = call i8* @smp_malloc(i64 8)
  %25 = bitcast i8* %24 to %struct.smpType_struct**
  store %struct.smpType_struct** %25, %struct.smpType_struct*** %parents, align 8
  %26 = load %struct.smpType_struct** %3, align 8
  %27 = load %struct.smpType_struct*** %parents, align 8
  store %struct.smpType_struct* %26, %struct.smpType_struct** %27
  store i64 1, i64* %parents_length, align 8
  br label %28

; <label>:28                                      ; preds = %23, %22
  %29 = load i8** %2, align 8
  %30 = load %struct.smpType_struct*** %parents, align 8
  %31 = load i64* %parents_length, align 8
  %32 = load i32* %4, align 4
  %33 = call i32 @smpGlobal_class_multiple(i8* %29, %struct.smpType_struct** %30, i64 %31, i32 %32)
  store i32 %33, i32* %1
  br label %34

; <label>:34                                      ; preds = %28, %18
  %35 = load i32* %1
  ret i32 %35
}

define i32 @smpGlobal_class_multiple(i8* %name, %struct.smpType_struct** %parents, i64 %parents_length, i32 %flags) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smpType_struct**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %new_type = alloca %struct.smpType_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.smpType_struct, align 8
  store i8* %name, i8** %2, align 8
  store %struct.smpType_struct** %parents, %struct.smpType_struct*** %3, align 8
  store i64 %parents_length, i64* %4, align 8
  store i32 %flags, i32* %5, align 4
  %8 = load %struct.smpType_struct*** %3, align 8
  %9 = icmp ne %struct.smpType_struct** %8, null
  br i1 %9, label %10, label %29

; <label>:10                                      ; preds = %0
  %11 = load %struct.smpType_struct*** %3, align 8
  %12 = getelementptr inbounds %struct.smpType_struct** %11, i64 0
  %13 = load %struct.smpType_struct** %12
  %14 = icmp ne %struct.smpType_struct* %13, null
  br i1 %14, label %15, label %29

; <label>:15                                      ; preds = %10
  %16 = load %struct.smpType_struct*** %3, align 8
  %17 = getelementptr inbounds %struct.smpType_struct** %16, i64 0
  %18 = load %struct.smpType_struct** %17
  %19 = bitcast %struct.smpType_struct* %18 to i8*
  %20 = getelementptr i8* %19, i32 12
  %21 = bitcast i8* %20 to i32*
  %22 = load i32* %21, align 4
  %23 = lshr i32 %22, 4
  %24 = and i32 %23, 1
  %25 = shl i32 %24, 31
  %26 = ashr i32 %25, 31
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %15
  store i32 1, i32* %1
  br label %159

; <label>:29                                      ; preds = %15, %10, %0
  %30 = load i8** %2, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = add i64 %31, 1
  %33 = mul i64 1, %32
  %34 = call i8* @smp_malloc(i64 %33)
  %35 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 0
  %37 = load i8** %36, align 8
  %38 = call i64 @llvm.objectsize.i64(i8* %37, i1 false)
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %29
  %41 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 0
  %42 = load i8** %41, align 8
  %43 = load i8** %2, align 8
  %44 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 0
  %45 = load i8** %44, align 8
  %46 = call i64 @llvm.objectsize.i64(i8* %45, i1 false)
  %47 = call i8* @__strcpy_chk(i8* %42, i8* %43, i64 %46)
  br label %53

; <label>:48                                      ; preds = %29
  %49 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 0
  %50 = load i8** %49, align 8
  %51 = load i8** %2, align 8
  %52 = call i8* @__inline_strcpy_chk(i8* %50, i8* %51)
  br label %53

; <label>:53                                      ; preds = %48, %40
  %54 = phi i8* [ %47, %40 ], [ %52, %48 ]
  %55 = load i32* @smpType_next_id, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @smpType_next_id, align 4
  %57 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 1
  %61 = load i32* %60, align 4
  call void @objid_init(%struct.obj_struct* sret %6, i32 %61)
  %62 = call i32 @minihash_add(%struct.minihash_struct* @smpType_ids, i8* %59, %struct.obj_struct* byval %6)
  %63 = load %struct.smpType_struct*** %3, align 8
  %64 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 3
  store %struct.smpType_struct** %63, %struct.smpType_struct*** %64, align 8
  %65 = load i64* %4, align 8
  %66 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 4
  store i64 %65, i64* %66, align 8
  %67 = load i32* %5, align 4
  %68 = and i32 %67, 1
  %69 = ashr i32 %68, 0
  %70 = and i32 %69, 1
  %71 = shl i32 %70, 31
  %72 = ashr i32 %71, 31
  %73 = bitcast %struct.smpType_struct* %new_type to i8*
  %74 = getelementptr i8* %73, i32 12
  %75 = bitcast i8* %74 to i32*
  %76 = and i32 %70, 1
  %77 = load i32* %75, align 4
  %78 = and i32 %77, -2
  %79 = or i32 %78, %76
  store i32 %79, i32* %75, align 4
  %80 = load i32* %5, align 4
  %81 = and i32 %80, 2
  %82 = ashr i32 %81, 1
  %83 = and i32 %82, 1
  %84 = shl i32 %83, 31
  %85 = ashr i32 %84, 31
  %86 = bitcast %struct.smpType_struct* %new_type to i8*
  %87 = getelementptr i8* %86, i32 12
  %88 = bitcast i8* %87 to i32*
  %89 = and i32 %83, 1
  %90 = shl i32 %89, 1
  %91 = load i32* %88, align 4
  %92 = and i32 %91, -3
  %93 = or i32 %92, %90
  store i32 %93, i32* %88, align 4
  %94 = load i32* %5, align 4
  %95 = and i32 %94, 48
  %96 = ashr i32 %95, 4
  %97 = and i32 %96, 3
  %98 = shl i32 %97, 30
  %99 = ashr i32 %98, 30
  %100 = bitcast %struct.smpType_struct* %new_type to i8*
  %101 = getelementptr i8* %100, i32 12
  %102 = bitcast i8* %101 to i32*
  %103 = and i32 %97, 3
  %104 = shl i32 %103, 2
  %105 = load i32* %102, align 4
  %106 = and i32 %105, -13
  %107 = or i32 %106, %104
  store i32 %107, i32* %102, align 4
  %108 = load i32* %5, align 4
  %109 = and i32 %108, 64
  %110 = ashr i32 %109, 6
  %111 = and i32 %110, 1
  %112 = shl i32 %111, 31
  %113 = ashr i32 %112, 31
  %114 = bitcast %struct.smpType_struct* %new_type to i8*
  %115 = getelementptr i8* %114, i32 12
  %116 = bitcast i8* %115 to i32*
  %117 = and i32 %111, 1
  %118 = shl i32 %117, 4
  %119 = load i32* %116, align 4
  %120 = and i32 %119, -17
  %121 = or i32 %120, %118
  store i32 %121, i32* %116, align 4
  %122 = load i32* %5, align 4
  %123 = and i32 %122, 128
  %124 = ashr i32 %123, 7
  %125 = and i32 %124, 1
  %126 = shl i32 %125, 31
  %127 = ashr i32 %126, 31
  %128 = bitcast %struct.smpType_struct* %new_type to i8*
  %129 = getelementptr i8* %128, i32 12
  %130 = bitcast i8* %129 to i32*
  %131 = and i32 %125, 1
  %132 = shl i32 %131, 5
  %133 = load i32* %130, align 4
  %134 = and i32 %133, -33
  %135 = or i32 %134, %132
  store i32 %135, i32* %130, align 4
  %136 = call i8* @smp_malloc(i64 32)
  %137 = bitcast i8* %136 to %struct.minihash_struct*
  %138 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 5
  store %struct.minihash_struct* %137, %struct.minihash_struct** %138, align 8
  %139 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 5
  %140 = load %struct.minihash_struct** %139, align 8
  call void @minihash_init(%struct.minihash_struct* sret %140)
  %141 = call i8* @smp_malloc(i64 32)
  %142 = bitcast i8* %141 to %struct.minihash_struct*
  %143 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 6
  store %struct.minihash_struct* %142, %struct.minihash_struct** %143, align 8
  %144 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 6
  %145 = load %struct.minihash_struct** %144, align 8
  call void @minihash_init(%struct.minihash_struct* sret %145)
  %146 = call i8* @smp_malloc(i64 32)
  %147 = bitcast i8* %146 to %struct.minihash_struct*
  %148 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 7
  store %struct.minihash_struct* %147, %struct.minihash_struct** %148, align 8
  %149 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 7
  %150 = load %struct.minihash_struct** %149, align 8
  call void @minihash_init(%struct.minihash_struct* sret %150)
  %151 = call i8* @smp_malloc(i64 32)
  %152 = bitcast i8* %151 to %struct.minihash_struct*
  %153 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 8
  store %struct.minihash_struct* %152, %struct.minihash_struct** %153, align 8
  %154 = getelementptr inbounds %struct.smpType_struct* %new_type, i32 0, i32 8
  %155 = load %struct.minihash_struct** %154, align 8
  call void @minihash_init(%struct.minihash_struct* sret %155)
  %156 = bitcast %struct.smpType_struct* %7 to i8*
  %157 = bitcast %struct.smpType_struct* %new_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 64, i32 8, i1 false)
  %158 = call i32 @smp_putclass(%struct.smpType_struct* byval %7)
  store i32 0, i32* %1
  br label %159

; <label>:159                                     ; preds = %53, %28
  %160 = load i32* %1
  ret i32 %160
}

define void @smpType_def(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i32 %flags, i8* %name, %struct.obj_struct* byval %fun) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %flags, i32* %1, align 4
  store i8* %name, i8** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load i32* %1, align 4
  %8 = load i8** %2, align 8
  %9 = bitcast %struct.obj_struct* %4 to i8*
  %10 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @smpType_def_general(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i32 %7, i8* %8, %struct.obj_struct* byval %4)
  ret void
}

define void @smpFunction_init(%struct.obj_struct* sret %agg.result, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %fun, i32 %argc, ...) nounwind {
  %1 = alloca void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, align 8
  %2 = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  store void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %fun, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %1, align 8
  store i32 %argc, i32* %2, align 4
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* %4)
  %5 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %1, align 8
  %6 = load i32* %2, align 4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpFunction_init_v(%struct.obj_struct* sret %res, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %5, i32 %6, %struct.__va_list_tag* %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_end(i8* %9)
  %10 = bitcast %struct.obj_struct* %agg.result to i8*
  %11 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  ret void
}

define void @smpBool_and(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
; <label>:0
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %0
  %10 = load %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %10, i64 0
  %12 = bitcast %struct.obj_struct* %4 to i8*
  %13 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %4)
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16                                      ; preds = %9, %0
  %17 = phi i1 [ false, %0 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %18)
  ret void
}

define void @smpBool_or(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
; <label>:0
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

; <label>:9                                       ; preds = %0
  %10 = load %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %10, i64 0
  %12 = bitcast %struct.obj_struct* %4 to i8*
  %13 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %4)
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16                                      ; preds = %9, %0
  %17 = phi i1 [ true, %0 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %18)
  ret void
}

define void @smpBool_xor(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %3)
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = bitcast %struct.obj_struct* %4 to i8*
  %11 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %4)
  %13 = xor i32 %7, %12
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %13)
  ret void
}

define void @smpType_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpType_struct*
  %6 = getelementptr inbounds %struct.smpType_struct* %5, i32 0, i32 7
  %7 = load %struct.minihash_struct** %6, align 8
  %8 = call i32 @minihash_each(%struct.minihash_struct* %7, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  %9 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.smpType_struct*
  %12 = getelementptr inbounds %struct.smpType_struct* %11, i32 0, i32 8
  %13 = load %struct.minihash_struct** %12, align 8
  %14 = call i32 @minihash_each(%struct.minihash_struct* %13, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  %15 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = getelementptr inbounds %struct.smpType_struct* %17, i32 0, i32 5
  %19 = load %struct.minihash_struct** %18, align 8
  %20 = call i32 @minihash_each(%struct.minihash_struct* %19, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.smpType_struct*
  %24 = getelementptr inbounds %struct.smpType_struct* %23, i32 0, i32 6
  %25 = load %struct.minihash_struct** %24, align 8
  %26 = call i32 @minihash_each(%struct.minihash_struct* %25, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smptrue_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpString_init(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([5 x i8]* @.str105, i32 0, i32 0))
  ret void
}

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
  call void @smpObject_funcall(%struct.obj_struct* sret %obj, %struct.obj_struct* byval %1, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), i32 1, %struct.obj_struct* %found)
  %13 = bitcast %struct.obj_struct* %2 to i8*
  %14 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  %15 = call i32 @smpBool_to_cint(%struct.obj_struct* byval %2)
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
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([23 x i8]* @.str60, i32 0, i32 0), %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
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
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %8, i8* getelementptr inbounds ([33 x i8]* @.str61, i32 0, i32 0), %struct.obj_struct* byval %6, %struct.obj_struct* byval %7)
  br label %34

; <label>:34                                      ; preds = %29, %26
  br label %35

; <label>:35                                      ; preds = %34, %21
  call void @obj_clear(%struct.obj_struct* sret %9, %struct.obj_struct* %expected)
  call void @obj_clear(%struct.obj_struct* sret %10, %struct.obj_struct* %found)
  %36 = load i32* %equalp, align 4
  ret i32 %36
}

define i32 @smpBool_to_cint(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = load i8** getelementptr inbounds (%struct.obj_struct* @smp_nil, i32 0, i32 3), align 8
  %4 = icmp ne i8* %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

define void @smp_printf(%struct.obj_struct* sret %agg.result, i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i8* %format, i8** %1, align 8
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* %4)
  %5 = load i8** %1, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpGlobal_vsprintf(%struct.obj_struct* sret %res, i8* %5, %struct.__va_list_tag* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_end(i8* %8)
  %9 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %10 = load %struct.smpType_struct** %9, align 8
  %11 = getelementptr inbounds %struct.smpType_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %0
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %21

; <label>:18                                      ; preds = %0
  %19 = bitcast %struct.obj_struct* %2 to i8*
  %20 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smp_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %21

; <label>:21                                      ; preds = %18, %15
  ret void
}

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
  call void @smpInteger_init_clong(%struct.obj_struct* sret %x, i64 4)
  call void @smpInteger_init_clong(%struct.obj_struct* sret %y, i64 7)
  %33 = bitcast %struct.obj_struct* %1 to i8*
  %34 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  %35 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str62, i32 0, i32 0), %struct.obj_struct* byval %1)
  %36 = bitcast %struct.obj_struct* %2 to i8*
  %37 = bitcast %struct.obj_struct* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  %38 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str63, i32 0, i32 0), %struct.obj_struct* byval %2)
  store i32 1, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %3, i64 11)
  %39 = bitcast %struct.obj_struct* %5 to i8*
  %40 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %4, %struct.obj_struct* byval %5, i8* getelementptr inbounds ([2 x i8]* @.str64, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %41 = call i32 @smp_assert_eq(%struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  %42 = load i32* %successp, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %6, i64 -3)
  %44 = bitcast %struct.obj_struct* %8 to i8*
  %45 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %7, %struct.obj_struct* byval %8, i8* getelementptr inbounds ([2 x i8]* @.str65, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %46 = call i32 @smp_assert_eq(%struct.obj_struct* byval %6, %struct.obj_struct* byval %7)
  %47 = load i32* %successp, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %9, i64 28)
  %49 = bitcast %struct.obj_struct* %11 to i8*
  %50 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %10, %struct.obj_struct* byval %11, i8* getelementptr inbounds ([2 x i8]* @.str66, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %51 = call i32 @smp_assert_eq(%struct.obj_struct* byval %9, %struct.obj_struct* byval %10)
  %52 = load i32* %successp, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %12, i64 0)
  %54 = bitcast %struct.obj_struct* %14 to i8*
  %55 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %13, %struct.obj_struct* byval %14, i8* getelementptr inbounds ([2 x i8]* @.str67, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %56 = call i32 @smp_assert_eq(%struct.obj_struct* byval %12, %struct.obj_struct* byval %13)
  %57 = load i32* %successp, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %15, i64 4)
  %59 = bitcast %struct.obj_struct* %17 to i8*
  %60 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %16, %struct.obj_struct* byval %17, i8* getelementptr inbounds ([2 x i8]* @.str68, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %61 = call i32 @smp_assert_eq(%struct.obj_struct* byval %15, %struct.obj_struct* byval %16)
  %62 = load i32* %successp, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %18, i64 512)
  %64 = bitcast %struct.obj_struct* %20 to i8*
  %65 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %19, %struct.obj_struct* byval %20, i8* getelementptr inbounds ([3 x i8]* @.str69, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %66 = call i32 @smp_assert_eq(%struct.obj_struct* byval %18, %struct.obj_struct* byval %19)
  %67 = load i32* %successp, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %21, i64 0)
  %69 = bitcast %struct.obj_struct* %23 to i8*
  %70 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %22, %struct.obj_struct* byval %23, i8* getelementptr inbounds ([3 x i8]* @.str70, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %71 = call i32 @smp_assert_eq(%struct.obj_struct* byval %21, %struct.obj_struct* byval %22)
  %72 = load i32* %successp, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %24, i64 4)
  %74 = bitcast %struct.obj_struct* %26 to i8*
  %75 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %25, %struct.obj_struct* byval %26, i8* getelementptr inbounds ([2 x i8]* @.str71, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %76 = call i32 @smp_assert_eq(%struct.obj_struct* byval %24, %struct.obj_struct* byval %25)
  %77 = load i32* %successp, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %27, i64 7)
  %79 = bitcast %struct.obj_struct* %29 to i8*
  %80 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %28, %struct.obj_struct* byval %29, i8* getelementptr inbounds ([2 x i8]* @.str72, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %81 = call i32 @smp_assert_eq(%struct.obj_struct* byval %27, %struct.obj_struct* byval %28)
  %82 = load i32* %successp, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %successp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %30, i64 3)
  %84 = bitcast %struct.obj_struct* %32 to i8*
  %85 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %31, %struct.obj_struct* byval %32, i8* getelementptr inbounds ([2 x i8]* @.str73, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %86 = call i32 @smp_assert_eq(%struct.obj_struct* byval %30, %struct.obj_struct* byval %31)
  %87 = load i32* %successp, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %successp, align 4
  %89 = load i32* %successp, align 4
  ret i32 %89
}

define i32 @test_gc() nounwind {
  %x = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %i = alloca i32, align 4
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %x, i64 4)
  %5 = bitcast %struct.obj_struct* %1 to i8*
  %6 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str62, i32 0, i32 0), %struct.obj_struct* byval %1)
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
  call void @smpObject_funcall(%struct.obj_struct* sret %2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([2 x i8]* @.str73, i32 0, i32 0), i32 1, %struct.obj_struct* @smp_nil)
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

define void @smp_println(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj) nounwind {
  %res = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = bitcast %struct.obj_struct* %1 to i8*
  %3 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @smp_print(%struct.obj_struct* sret %res, %struct.obj_struct* byval %1)
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %5 = load %struct.smpType_struct** %4, align 8
  %6 = getelementptr inbounds %struct.smpType_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  %12 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  br label %18

; <label>:13                                      ; preds = %0
  %14 = load %struct.__sFILE** @smp_stdout, align 8
  %15 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %18

; <label>:18                                      ; preds = %13, %10
  ret void
}

define i32 @test_strings() nounwind {
  %successp = alloca i32, align 4
  %world = alloca %struct.obj_struct, align 8
  %worlds = alloca [4 x %struct.obj_struct], align 16
  %str = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 1, i32* %successp, align 4
  call void @smpString_init(%struct.obj_struct* sret %world, i8* getelementptr inbounds ([6 x i8]* @.str74, i32 0, i32 0))
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
  call void (%struct.obj_struct*, i8*, ...)* @smpGlobal_sprintf(%struct.obj_struct* sret %str, i8* getelementptr inbounds ([42 x i8]* @.str75, i32 0, i32 0), i32 4, %struct.obj_struct* %16)
  call void @smpString_init(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([60 x i8]* @.str76, i32 0, i32 0))
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

define void @smpGlobal_sprintf(%struct.obj_struct* sret %agg.result, i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  store i8* %format, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = load i8** %1, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpGlobal_vsprintf(%struct.obj_struct* sret %res, i8* %4, %struct.__va_list_tag* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_end(i8* %7)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  %9 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  ret void
}

define i32 @test_printf() nounwind {
  %arr = alloca [4 x %struct.obj_struct], align 16
  %1 = alloca %struct.obj_struct, align 8
  %2 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 0
  call void @smpInteger_init_clong(%struct.obj_struct* sret %2, i64 18)
  %3 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 1
  call void @smpFloat_init_cdouble(%struct.obj_struct* sret %3, double 2.140000e+01)
  %4 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 2
  call void @smpInteger_init_clong(%struct.obj_struct* sret %4, i64 16)
  %5 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 3
  call void @smpInteger_init_clong(%struct.obj_struct* sret %5, i64 16)
  %6 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 0
  call void (%struct.obj_struct*, i8*, ...)* @smpGlobal_sprintf(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([30 x i8]* @.str77, i32 0, i32 0), i32 4, %struct.obj_struct* %6)
  ret i32 0
}

define void @smpFloat_init_cdouble(%struct.obj_struct* sret %agg.result, double %d) nounwind {
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
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %res, [1 x %struct.anon]* %11)
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  %13 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  ret void
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
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @make_list, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str79, i32 0, i32 0), %struct.obj_struct* byval %2)
  %11 = bitcast %struct.obj_struct* %xs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %12 = bitcast %struct.obj_struct* %4 to i8*
  %13 = bitcast %struct.obj_struct* %xs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = call i32 @scope_add(i8* getelementptr inbounds ([3 x i8]* @.str80, i32 0, i32 0), %struct.obj_struct* byval %4)
  call void @smpInteger_init_clong(%struct.obj_struct* sret %5, i64 20)
  call void @make_list(%struct.obj_struct* sret %special, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* @smpInteger_zero)
  store i64 19, i64* %i, align 8
  br label %15

; <label>:15                                      ; preds = %28, %0
  %16 = load i64* %i, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %31

; <label>:18                                      ; preds = %15
  %19 = load i64* %i, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %x, i64 %19)
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str62, i32 0, i32 0), %struct.obj_struct* byval %6)
  %23 = bitcast %struct.obj_struct* %7 to i8*
  %24 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %xs, %struct.obj_struct* byval %7, i8* getelementptr inbounds ([5 x i8]* @.str50, i32 0, i32 0), i32 1, %struct.obj_struct* %xs)
  %25 = bitcast %struct.obj_struct* %8 to i8*
  %26 = bitcast %struct.obj_struct* %xs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  %27 = call i32 @scope_add(i8* getelementptr inbounds ([3 x i8]* @.str80, i32 0, i32 0), %struct.obj_struct* byval %8)
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
  %12 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %3, i32 1, %struct.obj_struct* @smpInteger_zero)
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %41

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %4 to i8*
  %16 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void @smpInteger_sub(%struct.obj_struct* sret %dec, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* @smpInteger_one)
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %5 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smpInteger_add(%struct.obj_struct* sret %num, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* @smpInteger_one)
  %21 = load %struct.obj_struct** %2, align 8
  %22 = getelementptr inbounds %struct.obj_struct* %21, i64 0
  %23 = bitcast %struct.obj_struct* %car to i8*
  %24 = bitcast %struct.obj_struct* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = bitcast %struct.obj_struct* %6 to i8*
  %26 = bitcast %struct.obj_struct* %dec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %cdr, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([10 x i8]* @.str79, i32 0, i32 0), i32 1, %struct.obj_struct* %num)
  %27 = bitcast %struct.obj_struct* %7 to i8*
  %28 = bitcast %struct.obj_struct* %dec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %29 = getelementptr inbounds %struct.obj_struct* %cdr, i32 0, i32 2
  %30 = load %struct.smpType_struct** %29, align 8
  %31 = getelementptr inbounds %struct.smpType_struct* %30, i32 0, i32 0
  %32 = load i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
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
  call void @smpObject_cons(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %cdr)
  br label %43

; <label>:41                                      ; preds = %0
  %42 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %43

; <label>:43                                      ; preds = %41, %38, %35
  ret void
}

define i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smpType_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %34

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %15 = load i8** %14, align 8
  %16 = bitcast i8* %15 to [1 x %5]*
  %17 = getelementptr inbounds [1 x %5]* %16, i32 0, i32 0
  %18 = load %struct.obj_struct** %3, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = getelementptr inbounds %struct.obj_struct* %19, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %5]*
  %23 = getelementptr inbounds [1 x %5]* %22, i32 0, i32 0
  %24 = call i32 @__gmpz_cmp(%5* %17, %5* %23) readonly
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
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_float, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

; <label>:43                                      ; preds = %34
  %44 = load %struct.obj_struct** %3, align 8
  %45 = getelementptr inbounds %struct.obj_struct* %44, i64 0
  %46 = bitcast %struct.obj_struct* %4 to i8*
  %47 = bitcast %struct.obj_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  %48 = call i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %obj)
  store i32 %48, i32* %1
  br label %50

; <label>:49                                      ; preds = %34
  store i32 -2, i32* %1
  br label %50

; <label>:50                                      ; preds = %49, %43, %32
  %51 = load i32* %1
  ret i32 %51
}

define void @smpInteger_sub(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %res = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 16)
  %16 = bitcast i8* %15 to [1 x %5]*
  store [1 x %5]* %16, [1 x %5]** %z, align 8
  %17 = load [1 x %5]** %z, align 8
  %18 = getelementptr inbounds [1 x %5]* %17, i32 0, i32 0
  call void @__gmpz_init(%5* %18)
  %19 = load [1 x %5]** %z, align 8
  %20 = getelementptr inbounds [1 x %5]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to [1 x %5]*
  %24 = getelementptr inbounds [1 x %5]* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %5]*
  %30 = getelementptr inbounds [1 x %5]* %29, i32 0, i32 0
  call void @__gmpz_sub(%5* %20, %5* %24, %5* %30)
  %31 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %31)
  br label %69

; <label>:32                                      ; preds = %0
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 2
  %36 = load %struct.smpType_struct** %35, align 8
  %37 = getelementptr inbounds %struct.smpType_struct* %36, i32 0, i32 1
  %38 = load i32* %37, align 4
  %39 = load i32* @smpType_id_float, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

; <label>:41                                      ; preds = %32
  %42 = call i8* @smp_malloc(i64 32)
  %43 = bitcast i8* %42 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %43, [1 x %struct.anon]** %res, align 8
  %44 = load [1 x %struct.anon]** %res, align 8
  %45 = getelementptr inbounds [1 x %struct.anon]* %44, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %45)
  %46 = load [1 x %struct.anon]** %res, align 8
  %47 = getelementptr inbounds [1 x %struct.anon]* %46, i32 0, i32 0
  %48 = load %struct.obj_struct** %2, align 8
  %49 = getelementptr inbounds %struct.obj_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %struct.anon]*
  %53 = getelementptr inbounds [1 x %struct.anon]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %5]*
  %57 = getelementptr inbounds [1 x %5]* %56, i32 0, i32 0
  %58 = load i32* @smp_mpfr_rnd, align 4
  %59 = call i32 @mpfr_sub_z(%struct.anon* %47, %struct.anon* %53, %5* %57, i32 %58)
  %60 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %60)
  br label %69

; <label>:61                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %63 = load i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.smpType_struct*
  %65 = load %struct.obj_struct** %2, align 8
  %66 = getelementptr inbounds %struct.obj_struct* %65, i64 0
  %67 = bitcast %struct.obj_struct* %5 to i8*
  %68 = bitcast %struct.obj_struct* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %64, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %69

; <label>:69                                      ; preds = %61, %41, %14
  ret void
}

define void @smpInteger_add(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %res = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 16)
  %16 = bitcast i8* %15 to [1 x %5]*
  store [1 x %5]* %16, [1 x %5]** %z, align 8
  %17 = load [1 x %5]** %z, align 8
  %18 = getelementptr inbounds [1 x %5]* %17, i32 0, i32 0
  call void @__gmpz_init(%5* %18)
  %19 = load [1 x %5]** %z, align 8
  %20 = getelementptr inbounds [1 x %5]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to [1 x %5]*
  %24 = getelementptr inbounds [1 x %5]* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %5]*
  %30 = getelementptr inbounds [1 x %5]* %29, i32 0, i32 0
  call void @__gmpz_add(%5* %20, %5* %24, %5* %30)
  %31 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %31)
  br label %69

; <label>:32                                      ; preds = %0
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 2
  %36 = load %struct.smpType_struct** %35, align 8
  %37 = getelementptr inbounds %struct.smpType_struct* %36, i32 0, i32 1
  %38 = load i32* %37, align 4
  %39 = load i32* @smpType_id_float, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

; <label>:41                                      ; preds = %32
  %42 = call i8* @smp_malloc(i64 32)
  %43 = bitcast i8* %42 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %43, [1 x %struct.anon]** %res, align 8
  %44 = load [1 x %struct.anon]** %res, align 8
  %45 = getelementptr inbounds [1 x %struct.anon]* %44, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %45)
  %46 = load [1 x %struct.anon]** %res, align 8
  %47 = getelementptr inbounds [1 x %struct.anon]* %46, i32 0, i32 0
  %48 = load %struct.obj_struct** %2, align 8
  %49 = getelementptr inbounds %struct.obj_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %struct.anon]*
  %53 = getelementptr inbounds [1 x %struct.anon]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %5]*
  %57 = getelementptr inbounds [1 x %5]* %56, i32 0, i32 0
  %58 = load i32* @smp_mpfr_rnd, align 4
  %59 = call i32 @mpfr_add_z(%struct.anon* %47, %struct.anon* %53, %5* %57, i32 %58)
  %60 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %60)
  br label %69

; <label>:61                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %63 = load i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.smpType_struct*
  %65 = load %struct.obj_struct** %2, align 8
  %66 = getelementptr inbounds %struct.obj_struct* %65, i64 0
  %67 = bitcast %struct.obj_struct* %5 to i8*
  %68 = bitcast %struct.obj_struct* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %64, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %69

; <label>:69                                      ; preds = %61, %41, %14
  ret void
}

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
  call void @smpListBuffer_init(%struct.obj_struct* sret %listbuf)
  call void @smpBool_init(%struct.obj_struct* sret %true_val, i32 1)
  call void @smpBool_init(%struct.obj_struct* sret %false_val, i32 0)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %fun_val, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpListBuffer_to_list, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str81, i32 0, i32 0))
  %9 = bitcast %struct.obj_struct* %1 to i8*
  %10 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @smpListBuffer_add_now(%struct.obj_struct* sret %2, %struct.obj_struct* byval %1, i32 1, %struct.obj_struct* %true_val)
  %11 = bitcast %struct.obj_struct* %3 to i8*
  %12 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  call void @smpListBuffer_add_now(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* %false_val)
  %13 = bitcast %struct.obj_struct* %5 to i8*
  %14 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  call void @smpListBuffer_add_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %fun_val)
  %15 = bitcast %struct.obj_struct* %7 to i8*
  %16 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void @smpListBuffer_to_list(%struct.obj_struct* sret %list, %struct.obj_struct* byval %7, i32 0, %struct.obj_struct* null)
  call void @obj_clear(%struct.obj_struct* sret %8, %struct.obj_struct* %list)
  ret i32 1
}

define void @smpListBuffer_to_list(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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

define void @smpListBuffer_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = load %struct.smpType_struct** %10, align 8
  %12 = getelementptr inbounds %struct.smpType_struct* %11, i32 0, i32 1
  %13 = load i32* %12, align 4
  %14 = load i32* @smpType_id_nil, align 4
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
  call void @smpObject_cons(%struct.obj_struct* sret %18, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* @smp_nil)
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
  %36 = bitcast i8* %35 to %struct.smpPair_struct*
  %37 = getelementptr inbounds %struct.smpPair_struct* %36, i32 0, i32 1
  store %struct.obj_struct* %31, %struct.obj_struct** %37, align 8
  %38 = load %struct.listbuf_struct** %lb, align 8
  %39 = getelementptr inbounds %struct.listbuf_struct* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.obj_struct* %39, i32 0, i32 3
  %41 = load i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.smpPair_struct*
  %43 = getelementptr inbounds %struct.smpPair_struct* %42, i32 0, i32 1
  %44 = load %struct.obj_struct** %43, align 8
  %45 = load %struct.obj_struct** %2, align 8
  %46 = getelementptr inbounds %struct.obj_struct* %45, i64 0
  %47 = bitcast %struct.obj_struct* %4 to i8*
  %48 = bitcast %struct.obj_struct* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 32, i32 8, i1 false)
  call void @smpObject_cons(%struct.obj_struct* sret %44, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* @smp_nil)
  %49 = load %struct.listbuf_struct** %lb, align 8
  %50 = getelementptr inbounds %struct.listbuf_struct* %49, i32 0, i32 1
  %51 = load %struct.listbuf_struct** %lb, align 8
  %52 = getelementptr inbounds %struct.listbuf_struct* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.obj_struct* %52, i32 0, i32 3
  %54 = load i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.smpPair_struct*
  %56 = getelementptr inbounds %struct.smpPair_struct* %55, i32 0, i32 1
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
  call void @smpBool_and(%struct.obj_struct* sret %1, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* @smp_true)
  %44 = bitcast %struct.obj_struct* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %45 = call i32 @smp_assert_eq(%struct.obj_struct* byval %1, %struct.obj_struct* byval %3)
  %46 = load i32* %successp, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %successp, align 4
  %48 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_and(%struct.obj_struct* sret %4, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* @smp_nil)
  %49 = bitcast %struct.obj_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %50 = call i32 @smp_assert_eq(%struct.obj_struct* byval %4, %struct.obj_struct* byval %6)
  %51 = load i32* %successp, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %successp, align 4
  %53 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_and(%struct.obj_struct* sret %7, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* @smp_true)
  %54 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %55 = call i32 @smp_assert_eq(%struct.obj_struct* byval %7, %struct.obj_struct* byval %9)
  %56 = load i32* %successp, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %successp, align 4
  %58 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_and(%struct.obj_struct* sret %10, %struct.obj_struct* byval %11, i32 1, %struct.obj_struct* @smp_nil)
  %59 = bitcast %struct.obj_struct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %60 = call i32 @smp_assert_eq(%struct.obj_struct* byval %10, %struct.obj_struct* byval %12)
  %61 = load i32* %successp, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %successp, align 4
  %63 = bitcast %struct.obj_struct* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_not(%struct.obj_struct* sret %13, %struct.obj_struct* byval %14, i32 0, %struct.obj_struct* null)
  %64 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %65 = call i32 @smp_assert_eq(%struct.obj_struct* byval %13, %struct.obj_struct* byval %15)
  %66 = load i32* %successp, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %successp, align 4
  %68 = bitcast %struct.obj_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_not(%struct.obj_struct* sret %16, %struct.obj_struct* byval %17, i32 0, %struct.obj_struct* null)
  %69 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %70 = call i32 @smp_assert_eq(%struct.obj_struct* byval %16, %struct.obj_struct* byval %18)
  %71 = load i32* %successp, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %successp, align 4
  %73 = bitcast %struct.obj_struct* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_or(%struct.obj_struct* sret %19, %struct.obj_struct* byval %20, i32 1, %struct.obj_struct* @smp_true)
  %74 = bitcast %struct.obj_struct* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %75 = call i32 @smp_assert_eq(%struct.obj_struct* byval %19, %struct.obj_struct* byval %21)
  %76 = load i32* %successp, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %successp, align 4
  %78 = bitcast %struct.obj_struct* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_or(%struct.obj_struct* sret %22, %struct.obj_struct* byval %23, i32 1, %struct.obj_struct* @smp_nil)
  %79 = bitcast %struct.obj_struct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %80 = call i32 @smp_assert_eq(%struct.obj_struct* byval %22, %struct.obj_struct* byval %24)
  %81 = load i32* %successp, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %successp, align 4
  %83 = bitcast %struct.obj_struct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_or(%struct.obj_struct* sret %25, %struct.obj_struct* byval %26, i32 1, %struct.obj_struct* @smp_true)
  %84 = bitcast %struct.obj_struct* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %85 = call i32 @smp_assert_eq(%struct.obj_struct* byval %25, %struct.obj_struct* byval %27)
  %86 = load i32* %successp, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %successp, align 4
  %88 = bitcast %struct.obj_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_or(%struct.obj_struct* sret %28, %struct.obj_struct* byval %29, i32 1, %struct.obj_struct* @smp_nil)
  %89 = bitcast %struct.obj_struct* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %90 = call i32 @smp_assert_eq(%struct.obj_struct* byval %28, %struct.obj_struct* byval %30)
  %91 = load i32* %successp, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %successp, align 4
  %93 = bitcast %struct.obj_struct* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_xor(%struct.obj_struct* sret %31, %struct.obj_struct* byval %32, i32 1, %struct.obj_struct* @smp_true)
  %94 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %95 = call i32 @smp_assert_eq(%struct.obj_struct* byval %31, %struct.obj_struct* byval %33)
  %96 = load i32* %successp, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %successp, align 4
  %98 = bitcast %struct.obj_struct* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_xor(%struct.obj_struct* sret %34, %struct.obj_struct* byval %35, i32 1, %struct.obj_struct* @smp_nil)
  %99 = bitcast %struct.obj_struct* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %100 = call i32 @smp_assert_eq(%struct.obj_struct* byval %34, %struct.obj_struct* byval %36)
  %101 = load i32* %successp, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %successp, align 4
  %103 = bitcast %struct.obj_struct* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_xor(%struct.obj_struct* sret %37, %struct.obj_struct* byval %38, i32 1, %struct.obj_struct* @smp_true)
  %104 = bitcast %struct.obj_struct* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %105 = call i32 @smp_assert_eq(%struct.obj_struct* byval %37, %struct.obj_struct* byval %39)
  %106 = load i32* %successp, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %successp, align 4
  %108 = bitcast %struct.obj_struct* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpBool_xor(%struct.obj_struct* sret %40, %struct.obj_struct* byval %41, i32 1, %struct.obj_struct* @smp_nil)
  %109 = bitcast %struct.obj_struct* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %110 = call i32 @smp_assert_eq(%struct.obj_struct* byval %40, %struct.obj_struct* byval %42)
  %111 = load i32* %successp, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %successp, align 4
  %113 = load i32* %successp, align 4
  ret i32 %113
}

define void @smpBool_not(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %3)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %11)
  ret void
}

define i32 @test_regex() nounwind {
  %pattern = alloca %struct.obj_struct, align 8
  %string = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 0, i32* @gc_add_objectsp, align 4
  call void @smpString_init(%struct.obj_struct* sret %pattern, i8* getelementptr inbounds ([16 x i8]* @.str82, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %string, i8* getelementptr inbounds ([9 x i8]* @.str83, i32 0, i32 0))
  %4 = bitcast %struct.obj_struct* %2 to i8*
  %5 = bitcast %struct.obj_struct* %pattern to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpRegex_matchp(%struct.obj_struct* sret %1, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* %string)
  call void @smp_println(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1)
  store i32 1, i32* @gc_add_objectsp, align 4
  ret i32 0
}

define void @smpRegex_matchp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpRegex_match(%struct.obj_struct* sret %match, %struct.obj_struct* byval %3, i32 %6, %struct.obj_struct* %7)
  %8 = getelementptr inbounds %struct.obj_struct* %match, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 0
  %11 = load i8** %10, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  %16 = bitcast %struct.obj_struct* %match to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  br label %28

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.obj_struct* %match, i32 0, i32 2
  %19 = load %struct.smpType_struct** %18, align 8
  %20 = getelementptr inbounds %struct.smpType_struct* %19, i32 0, i32 1
  %21 = load i32* %20, align 4
  %22 = load i32* @smpType_id_nil, align 4
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

define i32 @test_arrays() nounwind {
  %array = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %i = alloca i32, align 4
  %elem = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  call void @smpArray_init(%struct.obj_struct* sret %array)
  %6 = bitcast %struct.obj_struct* %1 to i8*
  %7 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = call i32 @scope_add(i8* getelementptr inbounds ([6 x i8]* @.str84, i32 0, i32 0), %struct.obj_struct* byval %1)
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %17, %0
  %10 = load i32* %i, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %12, label %20

; <label>:12                                      ; preds = %9
  %13 = load i32* %i, align 4
  %14 = sext i32 %13 to i64
  call void @smpInteger_init_clong(%struct.obj_struct* sret %elem, i64 %14)
  %15 = bitcast %struct.obj_struct* %2 to i8*
  %16 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void @smpArray_add_now(%struct.obj_struct* sret %3, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* %elem)
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

define void @smpArray_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %arr = alloca %struct.smpArray_struct*, align 8
  %i = alloca i64, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpArray_struct*
  store %struct.smpArray_struct* %5, %struct.smpArray_struct** %arr, align 8
  %6 = load %struct.smpArray_struct** %arr, align 8
  %7 = getelementptr inbounds %struct.smpArray_struct* %6, i32 0, i32 1
  %8 = load i64* %7, align 8
  store i64 %8, i64* %i, align 8
  %9 = load %struct.smpArray_struct** %arr, align 8
  %10 = getelementptr inbounds %struct.smpArray_struct* %9, i32 0, i32 1
  %11 = load i64* %10, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.smpArray_struct** %arr, align 8
  %14 = load %struct.smpArray_struct** %arr, align 8
  %15 = getelementptr inbounds %struct.smpArray_struct* %14, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = mul i64 32, %16
  %18 = call i32 @smpArray_resize(%struct.smpArray_struct* %13, i64 %17)
  %19 = load i64* %i, align 8
  %20 = load %struct.smpArray_struct** %arr, align 8
  %21 = getelementptr inbounds %struct.smpArray_struct* %20, i32 0, i32 0
  %22 = load %struct.obj_struct** %21, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i64 %19
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = bitcast %struct.obj_struct* %23 to i8*
  %27 = bitcast %struct.obj_struct* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

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
  call void @smpHash_init(%struct.obj_struct* sret %hash)
  call void @smpString_init(%struct.obj_struct* sret %key, i8* getelementptr inbounds ([12 x i8]* @.str85, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %key2, i8* getelementptr inbounds ([10 x i8]* @.str86, i32 0, i32 0))
  call void @smpFloat_init_cdouble(%struct.obj_struct* sret %val, double 3.141590e+00)
  %11 = bitcast %struct.obj_struct* %1 to i8*
  %12 = bitcast %struct.obj_struct* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  call void @smpObject_cons(%struct.obj_struct* sret %pair, %struct.obj_struct* byval %1, i32 1, %struct.obj_struct* %val)
  %13 = bitcast %struct.obj_struct* %2 to i8*
  %14 = bitcast %struct.obj_struct* %key2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  call void @smpObject_cons(%struct.obj_struct* sret %pair2, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* %val)
  %15 = bitcast %struct.obj_struct* %3 to i8*
  %16 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void @smpHash_add_now(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* %pair)
  %17 = bitcast %struct.obj_struct* %5 to i8*
  %18 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  call void @smpHash_add_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %pair2)
  %19 = bitcast %struct.obj_struct* %7 to i8*
  %20 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smp_println(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7)
  %21 = bitcast %struct.obj_struct* %9 to i8*
  %22 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void @smpHash_at(%struct.obj_struct* sret %get, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %key)
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %10, i8* getelementptr inbounds ([8 x i8]* @.str87, i32 0, i32 0), i32 1, %struct.obj_struct* %get)
  store i32 1, i32* @gc_add_objectsp, align 4
  ret i32 0
}

define void @smpHash_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = load %struct.obj_struct** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %7, i64 0
  %9 = getelementptr inbounds %struct.obj_struct* %8, i32 0, i32 2
  %10 = load %struct.smpType_struct** %9, align 8
  %11 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %10, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 2
  %17 = load %struct.smpType_struct** %16, align 8
  %18 = getelementptr inbounds %struct.smpType_struct* %17, i32 0, i32 0
  %19 = load i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22                                      ; preds = %13
  %23 = load %struct.obj_struct** %2, align 8
  %24 = getelementptr inbounds %struct.obj_struct* %23, i64 0
  %25 = bitcast %struct.obj_struct* %agg.result to i8*
  %26 = bitcast %struct.obj_struct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  br label %45

; <label>:27                                      ; preds = %13
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0))
  %28 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %29 = load i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.smpType_struct*
  %31 = load %struct.obj_struct** %2, align 8
  %32 = getelementptr inbounds %struct.obj_struct* %31, i64 0
  %33 = bitcast %struct.obj_struct* %5 to i8*
  %34 = bitcast %struct.obj_struct* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %30, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %45

; <label>:35                                      ; preds = %0
  %36 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %37 = load i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.smpHash_struct*
  %39 = load %struct.obj_struct** %2, align 8
  %40 = getelementptr inbounds %struct.obj_struct* %39, i64 0
  %41 = bitcast %struct.obj_struct* %6 to i8*
  %42 = bitcast %struct.obj_struct* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  %43 = call i32 @smpHash_core_add_now(%struct.smpHash_struct* %38, %struct.obj_struct* byval %6)
  %44 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %45

; <label>:45                                      ; preds = %35, %27, %22
  ret void
}

define void @smpHash_at(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %hash = alloca %struct.smpHash_struct, align 8
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %list = alloca %struct.obj_struct*, align 8
  %pair = alloca %struct.obj_struct, align 8
  %equal_test = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %8 = load i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.smpHash_struct*
  %10 = bitcast %struct.smpHash_struct* %hash to i8*
  %11 = bitcast %struct.smpHash_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 64, i32 8, i1 false)
  store i32 0, i32* %index, align 4
  %12 = load %struct.obj_struct** %2, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %12, i64 0
  %14 = bitcast %struct.obj_struct* %3 to i8*
  %15 = bitcast %struct.obj_struct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = call i32 @obj_hash(i32* %index, %struct.obj_struct* byval %3)
  store i32 %16, i32* %code, align 4
  %17 = load i32* %code, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %0
  %20 = load i32* %code, align 4
  %21 = sext i32 %20 to i64
  call void @smpInteger_init_clong(%struct.obj_struct* sret %agg.result, i64 %21)
  br label %116

; <label>:22                                      ; preds = %0
  %23 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 2
  %24 = load i64* %23, align 8
  %25 = load i32* %index, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %index, align 4
  %29 = load i32* %index, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %32 = load %struct.obj_struct** %31, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 %30
  %34 = getelementptr inbounds %struct.obj_struct* %33, i32 0, i32 3
  %35 = load i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %51, label %37

; <label>:37                                      ; preds = %22
  %38 = load i32* %index, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %41 = load %struct.obj_struct** %40, align 8
  %42 = getelementptr inbounds %struct.obj_struct* %41, i64 %39
  %43 = getelementptr inbounds %struct.obj_struct* %42, i32 0, i32 2
  %44 = load %struct.smpType_struct** %43, align 8
  %45 = getelementptr inbounds %struct.smpType_struct* %44, i32 0, i32 1
  %46 = load i32* %45, align 4
  %47 = load i32* @smpType_id_list, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

; <label>:51                                      ; preds = %37, %22
  %52 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %116

; <label>:53                                      ; preds = %37
  %54 = load i32* %index, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %57 = load %struct.obj_struct** %56, align 8
  %58 = getelementptr inbounds %struct.obj_struct* %57, i64 %55
  store %struct.obj_struct* %58, %struct.obj_struct** %list, align 8
  br label %59

; <label>:59                                      ; preds = %102, %53
  %60 = load %struct.obj_struct** %list, align 8
  %61 = icmp ne %struct.obj_struct* %60, null
  br i1 %61, label %62, label %109

; <label>:62                                      ; preds = %59
  %63 = load %struct.obj_struct** %list, align 8
  %64 = getelementptr inbounds %struct.obj_struct* %63, i32 0, i32 3
  %65 = load i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.smpPair_struct*
  %67 = getelementptr inbounds %struct.smpPair_struct* %66, i32 0, i32 0
  %68 = bitcast %struct.obj_struct* %pair to i8*
  %69 = bitcast %struct.obj_struct* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  %70 = load %struct.obj_struct** %2, align 8
  %71 = getelementptr inbounds %struct.obj_struct* %70, i64 0
  %72 = bitcast %struct.obj_struct* %4 to i8*
  %73 = bitcast %struct.obj_struct* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 32, i32 8, i1 false)
  %74 = getelementptr inbounds %struct.obj_struct* %pair, i32 0, i32 3
  %75 = load i8** %74, align 8
  %76 = bitcast i8* %75 to %struct.smpPair_struct*
  %77 = getelementptr inbounds %struct.smpPair_struct* %76, i32 0, i32 0
  call void @smpObject_funcall(%struct.obj_struct* sret %equal_test, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([5 x i8]* @.str51, i32 0, i32 0), i32 1, %struct.obj_struct* %77)
  %78 = getelementptr inbounds %struct.obj_struct* %equal_test, i32 0, i32 2
  %79 = load %struct.smpType_struct** %78, align 8
  %80 = getelementptr inbounds %struct.smpType_struct* %79, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

; <label>:84                                      ; preds = %62
  %85 = bitcast %struct.obj_struct* %agg.result to i8*
  %86 = bitcast %struct.obj_struct* %equal_test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 32, i32 8, i1 false)
  br label %116

; <label>:87                                      ; preds = %62
  %88 = getelementptr inbounds %struct.obj_struct* %pair, i32 0, i32 2
  %89 = load %struct.smpType_struct** %88, align 8
  %90 = getelementptr inbounds %struct.smpType_struct* %89, i32 0, i32 1
  %91 = load i32* %90, align 4
  %92 = load i32* @smpType_id_list, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

; <label>:94                                      ; preds = %87
  %95 = bitcast %struct.obj_struct* %5 to i8*
  %96 = bitcast %struct.obj_struct* %equal_test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 32, i32 8, i1 false)
  %97 = call i32 @smpBool_to_cint(%struct.obj_struct* byval %5)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

; <label>:99                                      ; preds = %94
  %100 = bitcast %struct.obj_struct* %6 to i8*
  %101 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 32, i32 8, i1 false)
  call void @smpList_cdr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %6, i32 0, %struct.obj_struct* null)
  br label %116

; <label>:102                                     ; preds = %94, %87
  %103 = load %struct.obj_struct** %list, align 8
  %104 = getelementptr inbounds %struct.obj_struct* %103, i32 0, i32 3
  %105 = load i8** %104, align 8
  %106 = bitcast i8* %105 to %struct.smpPair_struct*
  %107 = getelementptr inbounds %struct.smpPair_struct* %106, i32 0, i32 1
  %108 = load %struct.obj_struct** %107, align 8
  store %struct.obj_struct* %108, %struct.obj_struct** %list, align 8
  br label %59

; <label>:109                                     ; preds = %59
  %110 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %111 = load i8** %110, align 8
  %112 = bitcast i8* %111 to %struct.smpHash_struct*
  %113 = getelementptr inbounds %struct.smpHash_struct* %112, i32 0, i32 1
  %114 = bitcast %struct.obj_struct* %agg.result to i8*
  %115 = bitcast %struct.obj_struct* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  br label %116

; <label>:116                                     ; preds = %109, %99, %84, %51, %19
  ret void
}

define i32 @test_external_classes() nounwind {
  %1 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([5 x i8]* @.str88, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 0)
  ret i32 0
}

define i32 @test_object_speed() nounwind {
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i32 0, i32* @gc_add_objectsp, align 4
  call void @smpInteger_init_clong(%struct.obj_struct* sret %1, i64 20000)
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
  call void @smpInteger_init_clong(%struct.obj_struct* sret %num, i64 0)
  br label %18

; <label>:18                                      ; preds = %17, %12
  %19 = bitcast %struct.obj_struct* %3 to i8*
  %20 = bitcast %struct.obj_struct* %num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smpInteger_mul(%struct.obj_struct* sret %square, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* %num)
  %21 = bitcast %struct.obj_struct* %max to i8*
  %22 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = bitcast %struct.obj_struct* %4 to i8*
  %24 = bitcast %struct.obj_struct* %num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %max)
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
  call void @smpObject_cons(%struct.obj_struct* sret %chain2, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* @smp_nil)
  %32 = bitcast %struct.obj_struct* %6 to i8*
  %33 = bitcast %struct.obj_struct* %square to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  call void @smpObject_cons(%struct.obj_struct* sret %chain, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %chain2)
  %34 = bitcast %struct.obj_struct* %7 to i8*
  %35 = bitcast %struct.obj_struct* %num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpInteger_add(%struct.obj_struct* sret %inc, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* @smpInteger_one)
  %36 = bitcast %struct.obj_struct* %8 to i8*
  %37 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  call void @speedtest_fun(%struct.obj_struct* sret %tmp, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %inc)
  %38 = bitcast %struct.obj_struct* %9 to i8*
  %39 = bitcast %struct.obj_struct* %chain to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void @smpObject_cons(%struct.obj_struct* sret %res, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %tmp)
  %40 = bitcast %struct.obj_struct* %agg.result to i8*
  %41 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  br label %42

; <label>:42                                      ; preds = %29, %27
  ret void
}

define void @smpInteger_mul(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %res = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 16)
  %16 = bitcast i8* %15 to [1 x %5]*
  store [1 x %5]* %16, [1 x %5]** %z, align 8
  %17 = load [1 x %5]** %z, align 8
  %18 = getelementptr inbounds [1 x %5]* %17, i32 0, i32 0
  call void @__gmpz_init(%5* %18)
  %19 = load [1 x %5]** %z, align 8
  %20 = getelementptr inbounds [1 x %5]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to [1 x %5]*
  %24 = getelementptr inbounds [1 x %5]* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %5]*
  %30 = getelementptr inbounds [1 x %5]* %29, i32 0, i32 0
  call void @__gmpz_mul(%5* %20, %5* %24, %5* %30)
  %31 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %31)
  br label %69

; <label>:32                                      ; preds = %0
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 2
  %36 = load %struct.smpType_struct** %35, align 8
  %37 = getelementptr inbounds %struct.smpType_struct* %36, i32 0, i32 1
  %38 = load i32* %37, align 4
  %39 = load i32* @smpType_id_float, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

; <label>:41                                      ; preds = %32
  %42 = call i8* @smp_malloc(i64 32)
  %43 = bitcast i8* %42 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %43, [1 x %struct.anon]** %res, align 8
  %44 = load [1 x %struct.anon]** %res, align 8
  %45 = getelementptr inbounds [1 x %struct.anon]* %44, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %45)
  %46 = load [1 x %struct.anon]** %res, align 8
  %47 = getelementptr inbounds [1 x %struct.anon]* %46, i32 0, i32 0
  %48 = load %struct.obj_struct** %2, align 8
  %49 = getelementptr inbounds %struct.obj_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %struct.anon]*
  %53 = getelementptr inbounds [1 x %struct.anon]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %5]*
  %57 = getelementptr inbounds [1 x %5]* %56, i32 0, i32 0
  %58 = load i32* @smp_mpfr_rnd, align 4
  %59 = call i32 @mpfr_mul_z(%struct.anon* %47, %struct.anon* %53, %5* %57, i32 %58)
  %60 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %60)
  br label %69

; <label>:61                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %63 = load i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.smpType_struct*
  %65 = load %struct.obj_struct** %2, align 8
  %66 = getelementptr inbounds %struct.obj_struct* %65, i64 0
  %67 = bitcast %struct.obj_struct* %5 to i8*
  %68 = bitcast %struct.obj_struct* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %64, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %69

; <label>:69                                      ; preds = %61, %41, %14
  ret void
}

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
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str89, i32 0, i32 0))
  br label %19

; <label>:17                                      ; preds = %0
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str90, i32 0, i32 0))
  br label %19

; <label>:19                                      ; preds = %17, %15
  %20 = load i32* %successp, align 4
  ret i32 %20
}

declare i8* @malloc(i64)

declare i8* @realloc(i8*, i64)

define i8* @smp_realloc_size(i8* %mem, i64 %old_bytes, i64 %new_bytes) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i8* %mem, i8** %1, align 8
  store i64 %old_bytes, i64* %2, align 8
  store i64 %new_bytes, i64* %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i64* %3, align 8
  %6 = call i8* @smp_realloc(i8* %4, i64 %5)
  ret i8* %6
}

declare void @free(i8*)

define void @smp_free_size(i8* %mem, i64 %bytes) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i8* %mem, i8** %1, align 8
  store i64 %bytes, i64* %2, align 8
  %3 = load i8** %1, align 8
  call void @smp_free(i8* %3)
  ret void
}

declare void @llvm.va_start(i8*) nounwind

declare i32 @fprintf(%struct.__sFILE*, i8*, ...)

declare i32 @vfprintf(%struct.__sFILE*, i8*, %struct.__va_list_tag*)

declare void @llvm.va_end(i8*) nounwind

define i32 @smpArray_create_class() nounwind {
  %array = alloca %struct.obj_struct, align 8
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
  %19 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([6 x i8]* @.str93, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %array, i8* getelementptr inbounds ([6 x i8]* @.str93, i32 0, i32 0))
  %20 = bitcast %struct.obj_struct* %1 to i8*
  %21 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpArray_add_now, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str94, i32 0, i32 0), %struct.obj_struct* byval %2)
  %22 = bitcast %struct.obj_struct* %4 to i8*
  %23 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpArray_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %5)
  %24 = bitcast %struct.obj_struct* %7 to i8*
  %25 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpArray_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %8)
  %26 = bitcast %struct.obj_struct* %10 to i8*
  %27 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpArray_map, i32 2, i8* getelementptr inbounds ([6 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str95, i32 0, i32 0), %struct.obj_struct* byval %11)
  %28 = bitcast %struct.obj_struct* %13 to i8*
  %29 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpArray_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %14)
  %30 = bitcast %struct.obj_struct* %16 to i8*
  %31 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpArray_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %17)
  ret i32 0
}

define void @smpArray_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpArray_struct*
  %6 = getelementptr inbounds %struct.smpArray_struct* %5, i32 0, i32 0
  %7 = load %struct.obj_struct** %6, align 8
  %8 = bitcast %struct.obj_struct* %7 to i8*
  call void @smp_free(i8* %8)
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpArray_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %a = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpArray_struct*
  %7 = getelementptr inbounds %struct.smpArray_struct* %6, i32 0, i32 0
  %8 = load %struct.obj_struct** %7, align 8
  store %struct.obj_struct* %8, %struct.obj_struct** %a, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.smpArray_struct*
  %12 = getelementptr inbounds %struct.smpArray_struct* %11, i32 0, i32 1
  %13 = load i64* %12, align 8
  store i64 %13, i64* %length, align 8
  store i64 0, i64* %i, align 8
  br label %14

; <label>:14                                      ; preds = %25, %0
  %15 = load i64* %i, align 8
  %16 = load i64* %length, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %14
  %19 = load i64* %i, align 8
  %20 = load %struct.obj_struct** %a, align 8
  %21 = getelementptr inbounds %struct.obj_struct* %20, i64 %19
  %22 = bitcast %struct.obj_struct* %3 to i8*
  %23 = bitcast %struct.obj_struct* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %24 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  br label %25

; <label>:25                                      ; preds = %18
  %26 = load i64* %i, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %i, align 8
  br label %14

; <label>:28                                      ; preds = %14
  %29 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpArray_map(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %a = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %res_arr = alloca %struct.obj_struct*, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = getelementptr inbounds %struct.obj_struct* %9, i32 0, i32 2
  %11 = load %struct.smpType_struct** %10, align 8
  %12 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %11, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

; <label>:14                                      ; preds = %0
  %15 = load %struct.obj_struct** %2, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %15, i64 0
  %17 = getelementptr inbounds %struct.obj_struct* %16, i32 0, i32 2
  %18 = load %struct.smpType_struct** %17, align 8
  %19 = getelementptr inbounds %struct.smpType_struct* %18, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %14
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  %27 = bitcast %struct.obj_struct* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  br label %90

; <label>:28                                      ; preds = %14
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %29 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %30 = load i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.smpType_struct*
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %5 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %31, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %90

; <label>:36                                      ; preds = %0
  %37 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %38 = load i8** %37, align 8
  %39 = bitcast i8* %38 to %struct.smpArray_struct*
  %40 = getelementptr inbounds %struct.smpArray_struct* %39, i32 0, i32 0
  %41 = load %struct.obj_struct** %40, align 8
  store %struct.obj_struct* %41, %struct.obj_struct** %a, align 8
  %42 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %43 = load i8** %42, align 8
  %44 = bitcast i8* %43 to %struct.smpArray_struct*
  %45 = getelementptr inbounds %struct.smpArray_struct* %44, i32 0, i32 1
  %46 = load i64* %45, align 8
  store i64 %46, i64* %length, align 8
  %47 = load i64* %length, align 8
  %48 = mul i64 32, %47
  %49 = call i8* @smp_malloc(i64 %48)
  %50 = bitcast i8* %49 to %struct.obj_struct*
  store %struct.obj_struct* %50, %struct.obj_struct** %res_arr, align 8
  store i64 0, i64* %i, align 8
  br label %51

; <label>:51                                      ; preds = %84, %36
  %52 = load i64* %i, align 8
  %53 = load i64* %length, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %87

; <label>:55                                      ; preds = %51
  %56 = load i64* %i, align 8
  %57 = load %struct.obj_struct** %res_arr, align 8
  %58 = getelementptr inbounds %struct.obj_struct* %57, i64 %56
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([7 x i8]* @.str98, i32 0, i32 0))
  %59 = load %struct.obj_struct** %2, align 8
  %60 = getelementptr inbounds %struct.obj_struct* %59, i64 0
  %61 = bitcast %struct.obj_struct* %7 to i8*
  %62 = bitcast %struct.obj_struct* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 32, i32 8, i1 false)
  %63 = load i64* %i, align 8
  %64 = load %struct.obj_struct** %a, align 8
  %65 = getelementptr inbounds %struct.obj_struct* %64, i64 %63
  call void @smpFunction_call(%struct.obj_struct* sret %58, %struct.obj_struct* byval %6, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* %65)
  %66 = load i64* %i, align 8
  %67 = load %struct.obj_struct** %res_arr, align 8
  %68 = getelementptr inbounds %struct.obj_struct* %67, i64 %66
  %69 = getelementptr inbounds %struct.obj_struct* %68, i32 0, i32 2
  %70 = load %struct.smpType_struct** %69, align 8
  %71 = getelementptr inbounds %struct.smpType_struct* %70, i32 0, i32 0
  %72 = load i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

; <label>:75                                      ; preds = %55
  %76 = load %struct.obj_struct** %res_arr, align 8
  %77 = bitcast %struct.obj_struct* %76 to i8*
  call void @smp_free(i8* %77)
  %78 = load i64* %i, align 8
  %79 = load %struct.obj_struct** %res_arr, align 8
  %80 = getelementptr inbounds %struct.obj_struct* %79, i64 %78
  %81 = bitcast %struct.obj_struct* %agg.result to i8*
  %82 = bitcast %struct.obj_struct* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 32, i32 8, i1 false)
  br label %90

; <label>:83                                      ; preds = %55
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i64* %i, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %i, align 8
  br label %51

; <label>:87                                      ; preds = %51
  %88 = load %struct.obj_struct** %res_arr, align 8
  %89 = load i64* %length, align 8
  call void @smpArray_init_array(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %88, i64 %89)
  br label %90

; <label>:90                                      ; preds = %87, %75, %28, %23
  ret void
}

define void @smpArray_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %divider = alloca %struct.obj_struct, align 8
  %str2 = alloca %struct.obj_struct, align 8
  %a = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %bracket = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpString_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([2 x i8]* @.str99, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %divider, i8* getelementptr inbounds ([3 x i8]* @.str100, i32 0, i32 0))
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smpArray_struct*
  %13 = getelementptr inbounds %struct.smpArray_struct* %12, i32 0, i32 0
  %14 = load %struct.obj_struct** %13, align 8
  store %struct.obj_struct* %14, %struct.obj_struct** %a, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpArray_struct*
  %18 = getelementptr inbounds %struct.smpArray_struct* %17, i32 0, i32 1
  %19 = load i64* %18, align 8
  store i64 %19, i64* %length, align 8
  store i64 0, i64* %i, align 8
  br label %20

; <label>:20                                      ; preds = %38, %0
  %21 = load i64* %i, align 8
  %22 = load i64* %length, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %41

; <label>:24                                      ; preds = %20
  %25 = load i64* %i, align 8
  %26 = load %struct.obj_struct** %a, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i64 %25
  %28 = bitcast %struct.obj_struct* %3 to i8*
  %29 = bitcast %struct.obj_struct* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %str2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %30 = load i64* %i, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %24
  %33 = bitcast %struct.obj_struct* %4 to i8*
  %34 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %divider)
  br label %35

; <label>:35                                      ; preds = %32, %24
  %36 = bitcast %struct.obj_struct* %6 to i8*
  %37 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %7, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %str2)
  br label %38

; <label>:38                                      ; preds = %35
  %39 = load i64* %i, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %i, align 8
  br label %20

; <label>:41                                      ; preds = %20
  call void @smpString_init(%struct.obj_struct* sret %bracket, i8* getelementptr inbounds ([2 x i8]* @.str101, i32 0, i32 0))
  %42 = bitcast %struct.obj_struct* %8 to i8*
  %43 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %9, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %bracket)
  %44 = bitcast %struct.obj_struct* %agg.result to i8*
  %45 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  ret void
}

define void @smpArray_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %old_gc_activep = alloca i32, align 4
  %res = alloca %struct.obj_struct, align 8
  %space = alloca %struct.obj_struct, align 8
  %str2 = alloca %struct.obj_struct, align 8
  %a = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %paren = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %10 = load i32* @gc_activep, align 4
  store i32 %10, i32* %old_gc_activep, align 4
  store i32 0, i32* @gc_activep, align 4
  call void @smpString_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([7 x i8]* @.str102, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %space, i8* getelementptr inbounds ([2 x i8]* @.str103, i32 0, i32 0))
  %11 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smpArray_struct*
  %14 = getelementptr inbounds %struct.smpArray_struct* %13, i32 0, i32 0
  %15 = load %struct.obj_struct** %14, align 8
  store %struct.obj_struct* %15, %struct.obj_struct** %a, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smpArray_struct*
  %19 = getelementptr inbounds %struct.smpArray_struct* %18, i32 0, i32 1
  %20 = load i64* %19, align 8
  store i64 %20, i64* %length, align 8
  store i64 0, i64* %i, align 8
  br label %21

; <label>:21                                      ; preds = %35, %0
  %22 = load i64* %i, align 8
  %23 = load i64* %length, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %38

; <label>:25                                      ; preds = %21
  %26 = load i64* %i, align 8
  %27 = load %struct.obj_struct** %a, align 8
  %28 = getelementptr inbounds %struct.obj_struct* %27, i64 %26
  %29 = bitcast %struct.obj_struct* %3 to i8*
  %30 = bitcast %struct.obj_struct* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %str2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %31 = bitcast %struct.obj_struct* %4 to i8*
  %32 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %space)
  %33 = bitcast %struct.obj_struct* %6 to i8*
  %34 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %7, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %str2)
  br label %35

; <label>:35                                      ; preds = %25
  %36 = load i64* %i, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %i, align 8
  br label %21

; <label>:38                                      ; preds = %21
  call void @smpString_init(%struct.obj_struct* sret %paren, i8* getelementptr inbounds ([2 x i8]* @.str104, i32 0, i32 0))
  %39 = bitcast %struct.obj_struct* %8 to i8*
  %40 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %9, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %paren)
  %41 = load i32* %old_gc_activep, align 4
  store i32 %41, i32* @gc_activep, align 4
  %42 = bitcast %struct.obj_struct* %agg.result to i8*
  %43 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  ret void
}

define i32 @smpArray_resize(%struct.smpArray_struct* %arr, i64 %size) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smpArray_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.smpArray_struct* %arr, %struct.smpArray_struct** %2, align 8
  store i64 %size, i64* %3, align 8
  %4 = load i64* %3, align 8
  %5 = icmp ugt i64 %4, 4
  br i1 %5, label %6, label %21

; <label>:6                                       ; preds = %0
  %7 = load i64* %3, align 8
  %8 = call i32 @is_power_of_2(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

; <label>:10                                      ; preds = %6
  %11 = load %struct.smpArray_struct** %2, align 8
  %12 = getelementptr inbounds %struct.smpArray_struct* %11, i32 0, i32 0
  %13 = load %struct.obj_struct** %12, align 8
  %14 = bitcast %struct.obj_struct* %13 to i8*
  %15 = load i64* %3, align 8
  %16 = call i64 @next_power_of_2(i64 %15)
  %17 = call i8* @smp_realloc(i8* %14, i64 %16)
  %18 = bitcast i8* %17 to %struct.obj_struct*
  %19 = load %struct.smpArray_struct** %2, align 8
  %20 = getelementptr inbounds %struct.smpArray_struct* %19, i32 0, i32 0
  store %struct.obj_struct* %18, %struct.obj_struct** %20, align 8
  store i32 1, i32* %1
  br label %22

; <label>:21                                      ; preds = %6, %0
  store i32 0, i32* %1
  br label %22

; <label>:22                                      ; preds = %21, %10
  %23 = load i32* %1
  ret i32 %23
}

define void @smpArray_init(%struct.obj_struct* sret %agg.result) nounwind {
  %core = alloca %struct.smpArray_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = call i64 @next_power_of_2(i64 4)
  %4 = mul i64 32, %3
  %5 = call i8* @smp_malloc(i64 %4)
  %6 = bitcast i8* %5 to %struct.obj_struct*
  %7 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 0
  store %struct.obj_struct* %6, %struct.obj_struct** %7, align 8
  %8 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 0
  %9 = load %struct.obj_struct** %8, align 8
  %10 = bitcast %struct.obj_struct* %9 to i8*
  %11 = call i64 @llvm.objectsize.i64(i8* %10, i1 false)
  %12 = icmp ne i64 %11, -1
  br i1 %12, label %13, label %24

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 0
  %15 = load %struct.obj_struct** %14, align 8
  %16 = bitcast %struct.obj_struct* %15 to i8*
  %17 = call i64 @next_power_of_2(i64 4)
  %18 = mul i64 32, %17
  %19 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 0
  %20 = load %struct.obj_struct** %19, align 8
  %21 = bitcast %struct.obj_struct* %20 to i8*
  %22 = call i64 @llvm.objectsize.i64(i8* %21, i1 false)
  %23 = call i8* @__memset_chk(i8* %16, i32 0, i64 %18, i64 %22)
  br label %31

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 0
  %26 = load %struct.obj_struct** %25, align 8
  %27 = bitcast %struct.obj_struct* %26 to i8*
  %28 = call i64 @next_power_of_2(i64 4)
  %29 = mul i64 32, %28
  %30 = call i8* @__inline_memset_chk(i8* %27, i32 0, i64 %29)
  br label %31

; <label>:31                                      ; preds = %24, %13
  %32 = phi i8* [ %23, %13 ], [ %30, %24 ]
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([6 x i8]* @.str93, i32 0, i32 0))
  %33 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %34 = load i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* %35)
  %36 = call i8* @smp_malloc(i64 16)
  %37 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %39 = load i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.smpArray_struct*
  %41 = bitcast %struct.smpArray_struct* %40 to i8*
  %42 = bitcast %struct.smpArray_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  %43 = bitcast %struct.obj_struct* %agg.result to i8*
  %44 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  ret void
}

define void @smpArray_init_array(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %arr, i64 %length) nounwind {
  %1 = alloca %struct.obj_struct*, align 8
  %2 = alloca i64, align 8
  %core = alloca %struct.smpArray_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct* %arr, %struct.obj_struct** %1, align 8
  store i64 %length, i64* %2, align 8
  %4 = load i64* %2, align 8
  %5 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 1
  store i64 %4, i64* %5, align 8
  %6 = load %struct.obj_struct** %1, align 8
  %7 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 0
  store %struct.obj_struct* %6, %struct.obj_struct** %7, align 8
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([6 x i8]* @.str93, i32 0, i32 0))
  %8 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* %10)
  %11 = call i8* @smp_malloc(i64 16)
  %12 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smpArray_struct*
  %16 = bitcast %struct.smpArray_struct* %15 to i8*
  %17 = bitcast %struct.smpArray_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  %19 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  ret void
}

define void @smpArray_get_c(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i64 %index) nounwind {
  %1 = alloca i64, align 8
  %core = alloca %struct.smpArray_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i64 %index, i64* %1, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpArray_struct*
  %7 = bitcast %struct.smpArray_struct* %core to i8*
  %8 = bitcast %struct.smpArray_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load i64* %1, align 8
  %10 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 1
  %11 = load i64* %10, align 8
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %0
  %14 = load i64* %1, align 8
  %15 = getelementptr inbounds %struct.smpArray_struct* %core, i32 0, i32 0
  %16 = load %struct.obj_struct** %15, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %16, i64 %14
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  %19 = bitcast %struct.obj_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  br label %22

; <label>:20                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([26 x i8]* @.str96, i32 0, i32 0))
  %21 = load i64* %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([28 x i8]* @.str97, i32 0, i32 0), i64 %21)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %22

; <label>:22                                      ; preds = %20, %13
  ret void
}

define void @smpArray_length(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpArray_struct*
  %6 = getelementptr inbounds %struct.smpArray_struct* %5, i32 0, i32 1
  %7 = load i64* %6, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %agg.result, i64 %7)
  ret void
}

define void @smpString_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.smpType_struct, align 8
  %core = alloca %struct.smpstrstruct*, align 8
  %str2 = alloca %struct.smpstrstruct, align 8
  %length = alloca i64, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %11 = load %struct.smpType_struct** %10, align 8
  %12 = bitcast %struct.smpType_struct* %3 to i8*
  %13 = bitcast %struct.smpType_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 64, i32 8, i1 false)
  %14 = call i32 @smpObject_instancep_c(%struct.smpType_struct* %9, %struct.smpType_struct* byval %3)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %87

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %18 = load i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.smpstrstruct*
  store %struct.smpstrstruct* %19, %struct.smpstrstruct** %core, align 8
  %20 = load %struct.obj_struct** %2, align 8
  %21 = getelementptr inbounds %struct.obj_struct* %20, i64 0
  %22 = getelementptr inbounds %struct.obj_struct* %21, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.smpstrstruct*
  %25 = bitcast %struct.smpstrstruct* %str2 to i8*
  %26 = bitcast %struct.smpstrstruct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = load %struct.smpstrstruct** %core, align 8
  %28 = getelementptr inbounds %struct.smpstrstruct* %27, i32 0, i32 1
  %29 = load i64* %28, align 8
  %30 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 1
  %31 = load i64* %30, align 8
  %32 = add i64 %29, %31
  store i64 %32, i64* %length, align 8
  %33 = load %struct.smpstrstruct** %core, align 8
  %34 = getelementptr inbounds %struct.smpstrstruct* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  %36 = load i64* %length, align 8
  %37 = add i64 %36, 1
  %38 = call i8* @smp_realloc(i8* %35, i64 %37)
  %39 = load %struct.smpstrstruct** %core, align 8
  %40 = getelementptr inbounds %struct.smpstrstruct* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.smpstrstruct** %core, align 8
  %42 = getelementptr inbounds %struct.smpstrstruct* %41, i32 0, i32 0
  %43 = load i8** %42, align 8
  %44 = load %struct.smpstrstruct** %core, align 8
  %45 = getelementptr inbounds %struct.smpstrstruct* %44, i32 0, i32 1
  %46 = load i64* %45, align 8
  %47 = getelementptr inbounds i8* %43, i64 %46
  %48 = call i64 @llvm.objectsize.i64(i8* %47, i1 false)
  %49 = icmp ne i64 %48, -1
  br i1 %49, label %50, label %69

; <label>:50                                      ; preds = %16
  %51 = load %struct.smpstrstruct** %core, align 8
  %52 = getelementptr inbounds %struct.smpstrstruct* %51, i32 0, i32 0
  %53 = load i8** %52, align 8
  %54 = load %struct.smpstrstruct** %core, align 8
  %55 = getelementptr inbounds %struct.smpstrstruct* %54, i32 0, i32 1
  %56 = load i64* %55, align 8
  %57 = getelementptr inbounds i8* %53, i64 %56
  %58 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = load %struct.smpstrstruct** %core, align 8
  %61 = getelementptr inbounds %struct.smpstrstruct* %60, i32 0, i32 0
  %62 = load i8** %61, align 8
  %63 = load %struct.smpstrstruct** %core, align 8
  %64 = getelementptr inbounds %struct.smpstrstruct* %63, i32 0, i32 1
  %65 = load i64* %64, align 8
  %66 = getelementptr inbounds i8* %62, i64 %65
  %67 = call i64 @llvm.objectsize.i64(i8* %66, i1 false)
  %68 = call i8* @__strcpy_chk(i8* %57, i8* %59, i64 %67)
  br label %80

; <label>:69                                      ; preds = %16
  %70 = load %struct.smpstrstruct** %core, align 8
  %71 = getelementptr inbounds %struct.smpstrstruct* %70, i32 0, i32 0
  %72 = load i8** %71, align 8
  %73 = load %struct.smpstrstruct** %core, align 8
  %74 = getelementptr inbounds %struct.smpstrstruct* %73, i32 0, i32 1
  %75 = load i64* %74, align 8
  %76 = getelementptr inbounds i8* %72, i64 %75
  %77 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 0
  %78 = load i8** %77, align 8
  %79 = call i8* @__inline_strcpy_chk(i8* %76, i8* %78)
  br label %80

; <label>:80                                      ; preds = %69, %50
  %81 = phi i8* [ %68, %50 ], [ %79, %69 ]
  %82 = load i64* %length, align 8
  %83 = load %struct.smpstrstruct** %core, align 8
  %84 = getelementptr inbounds %struct.smpstrstruct* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = bitcast %struct.obj_struct* %agg.result to i8*
  %86 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 32, i32 8, i1 false)
  br label %94

; <label>:87                                      ; preds = %0
  %88 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %89 = load %struct.smpType_struct** %88, align 8
  %90 = load %struct.obj_struct** %2, align 8
  %91 = getelementptr inbounds %struct.obj_struct* %90, i64 0
  %92 = bitcast %struct.obj_struct* %5 to i8*
  %93 = bitcast %struct.obj_struct* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %89, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %94

; <label>:94                                      ; preds = %87, %80
  ret void
}

define void @smpObject_truep(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %3)
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %6)
  ret void
}

define i32 @smpObject_truep_c(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %2 = load %struct.smpType_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smpType_struct* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = load i32* @smpType_id_nil, align 4
  %6 = icmp eq i32 %4, %5
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  ret i32 %8
}

define i32 @smpCollection_create_class() nounwind {
  %collclass = alloca %struct.obj_struct, align 8
  call void @smp_getclass(%struct.obj_struct* sret %collclass, i8* getelementptr inbounds ([11 x i8]* @.str37, i32 0, i32 0))
  ret i32 0
}

define i32 @smpException_create_class() nounwind {
  %exc = alloca %struct.obj_struct, align 8
  %runtime_exception = alloca %struct.obj_struct, align 8
  %smpType_runtime = alloca %struct.smpType_struct*, align 8
  %type_exception = alloca %struct.obj_struct, align 8
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
  call void @smp_getclass(%struct.obj_struct* sret %exc, i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0))
  call void @smp_getclass(%struct.obj_struct* sret %runtime_exception, i8* getelementptr inbounds ([17 x i8]* @.str44, i32 0, i32 0))
  %19 = getelementptr inbounds %struct.obj_struct* %runtime_exception, i32 0, i32 3
  %20 = load i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.smpType_struct*
  store %struct.smpType_struct* %21, %struct.smpType_struct** %smpType_runtime, align 8
  call void @smp_getclass(%struct.obj_struct* sret %type_exception, i8* getelementptr inbounds ([10 x i8]* @.str47, i32 0, i32 0))
  %22 = load %struct.smpType_struct** %smpType_runtime, align 8
  %23 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), %struct.smpType_struct* %22, i32 0)
  %24 = load %struct.smpType_struct** %smpType_runtime, align 8
  %25 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([25 x i8]* @.str106, i32 0, i32 0), %struct.smpType_struct* %24, i32 0)
  %26 = load %struct.smpType_struct** %smpType_runtime, align 8
  %27 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([26 x i8]* @.str96, i32 0, i32 0), %struct.smpType_struct* %26, i32 0)
  %28 = load %struct.smpType_struct** %smpType_runtime, align 8
  %29 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0), %struct.smpType_struct* %28, i32 0)
  %30 = load %struct.smpType_struct** %smpType_runtime, align 8
  %31 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([18 x i8]* @.str107, i32 0, i32 0), %struct.smpType_struct* %30, i32 0)
  %32 = load %struct.smpType_struct** %smpType_runtime, align 8
  %33 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([22 x i8]* @.str108, i32 0, i32 0), %struct.smpType_struct* %32, i32 0)
  %34 = bitcast %struct.obj_struct* %1 to i8*
  %35 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpException_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %2)
  %36 = bitcast %struct.obj_struct* %4 to i8*
  %37 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpException_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %5)
  %38 = bitcast %struct.obj_struct* %7 to i8*
  %39 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpException_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %8)
  %40 = bitcast %struct.obj_struct* %10 to i8*
  %41 = bitcast %struct.obj_struct* %type_exception to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpTypeError_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %11)
  %42 = bitcast %struct.obj_struct* %13 to i8*
  %43 = bitcast %struct.obj_struct* %type_exception to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpTypeError_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %14)
  %44 = bitcast %struct.obj_struct* %16 to i8*
  %45 = bitcast %struct.obj_struct* %type_exception to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpTypeError_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %17)
  ret i32 0
}

define void @smpException_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.minipair_struct*
  %7 = getelementptr inbounds %struct.minipair_struct* %6, i32 0, i32 1
  %8 = bitcast %struct.obj_struct* %3 to i8*
  %9 = bitcast %struct.obj_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpException_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.minipair_struct*
  %6 = getelementptr inbounds %struct.minipair_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smp_free(i8* %7)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpException_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.minipair_struct, align 8
  %bt = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %temp = alloca %struct.obj_struct, align 8
  %from = alloca %struct.obj_struct, align 8
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
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %14 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %15 = load i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.minipair_struct*
  %17 = bitcast %struct.minipair_struct* %core to i8*
  %18 = bitcast %struct.minipair_struct* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 40, i32 8, i1 false)
  %19 = getelementptr inbounds %struct.minipair_struct* %core, i32 0, i32 1
  store %struct.obj_struct* %19, %struct.obj_struct** %bt, align 8
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %21 = load %struct.smpType_struct** %20, align 8
  %22 = getelementptr inbounds %struct.smpType_struct* %21, i32 0, i32 0
  %23 = load i8** %22, align 8
  %24 = getelementptr inbounds %struct.minipair_struct* %core, i32 0, i32 0
  %25 = load i8** %24, align 8
  call void (%struct.obj_struct*, i8*, ...)* @smpString_init_fmt(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([7 x i8]* @.str110, i32 0, i32 0), i8* %23, i8* %25)
  %26 = load %struct.obj_struct** %bt, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 2
  %28 = load %struct.smpType_struct** %27, align 8
  %29 = getelementptr inbounds %struct.smpType_struct* %28, i32 0, i32 1
  %30 = load i32* %29, align 4
  %31 = load i32* @smpType_id_nil, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %0
  %34 = bitcast %struct.obj_struct* %agg.result to i8*
  %35 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  br label %70

; <label>:36                                      ; preds = %0
  call void (%struct.obj_struct*, i8*, ...)* @smpString_init_fmt(%struct.obj_struct* sret %from, i8* getelementptr inbounds ([8 x i8]* @.str111, i32 0, i32 0))
  br label %37

; <label>:37                                      ; preds = %56, %36
  %38 = load %struct.obj_struct** %bt, align 8
  %39 = icmp ne %struct.obj_struct* %38, null
  br i1 %39, label %40, label %67

; <label>:40                                      ; preds = %37
  %41 = load %struct.obj_struct** %bt, align 8
  %42 = bitcast %struct.obj_struct* %3 to i8*
  %43 = bitcast %struct.obj_struct* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  call void @smp_println(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3)
  %44 = load %struct.obj_struct** %bt, align 8
  %45 = bitcast %struct.obj_struct* %6 to i8*
  %46 = bitcast %struct.obj_struct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void @smpList_car(%struct.obj_struct* sret %5, %struct.obj_struct* byval %6, i32 0, %struct.obj_struct* null)
  call void @smpObject_funcall(%struct.obj_struct* sret %temp, %struct.obj_struct* byval %5, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %47 = getelementptr inbounds %struct.obj_struct* %temp, i32 0, i32 2
  %48 = load %struct.smpType_struct** %47, align 8
  %49 = getelementptr inbounds %struct.smpType_struct* %48, i32 0, i32 0
  %50 = load i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %40
  call void @obj_clear(%struct.obj_struct* sret %7, %struct.obj_struct* %from)
  call void @obj_clear(%struct.obj_struct* sret %8, %struct.obj_struct* %res)
  %54 = bitcast %struct.obj_struct* %agg.result to i8*
  %55 = bitcast %struct.obj_struct* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  br label %70

; <label>:56                                      ; preds = %40
  %57 = bitcast %struct.obj_struct* %9 to i8*
  %58 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %10, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %from)
  %59 = bitcast %struct.obj_struct* %11 to i8*
  %60 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %12, %struct.obj_struct* byval %11, i32 1, %struct.obj_struct* %temp)
  %61 = load %struct.obj_struct** %bt, align 8
  %62 = getelementptr inbounds %struct.obj_struct* %61, i32 0, i32 3
  %63 = load i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.smpPair_struct*
  %65 = getelementptr inbounds %struct.smpPair_struct* %64, i32 0, i32 1
  %66 = load %struct.obj_struct** %65, align 8
  store %struct.obj_struct* %66, %struct.obj_struct** %bt, align 8
  br label %37

; <label>:67                                      ; preds = %37
  call void @obj_clear(%struct.obj_struct* sret %13, %struct.obj_struct* %from)
  %68 = bitcast %struct.obj_struct* %agg.result to i8*
  %69 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  br label %70

; <label>:70                                      ; preds = %67, %53, %33
  ret void
}

define void @smpTypeError_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smpTypeError_struct*
  %8 = getelementptr inbounds %struct.smpTypeError_struct* %7, i32 0, i32 1
  %9 = bitcast %struct.obj_struct* %3 to i8*
  %10 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  %12 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %13 = load i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.smpTypeError_struct*
  %15 = getelementptr inbounds %struct.smpTypeError_struct* %14, i32 0, i32 3
  %16 = bitcast %struct.obj_struct* %4 to i8*
  %17 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  %18 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %4)
  %19 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpTypeError_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpTypeError_struct*
  %6 = getelementptr inbounds %struct.smpTypeError_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smp_free(i8* %7)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpTypeError_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpTypeError_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %newline = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  %separator = alloca %struct.obj_struct, align 8
  %str = alloca %struct.obj_struct, align 8
  %11 = alloca %struct.obj_struct, align 8
  %code = alloca %struct.obj_struct, align 8
  %12 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smpTypeError_struct*
  %16 = bitcast %struct.smpTypeError_struct* %core to i8*
  %17 = bitcast %struct.smpTypeError_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 80, i32 8, i1 false)
  %18 = getelementptr inbounds %struct.smpTypeError_struct* %core, i32 0, i32 0
  %19 = load i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %0
  %22 = getelementptr inbounds %struct.smpTypeError_struct* %core, i32 0, i32 0
  %23 = load i8** %22, align 8
  call void @smpString_init(%struct.obj_struct* sret %res, i8* %23)
  br label %49

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %struct.smpTypeError_struct* %core, i32 0, i32 2
  %26 = load %struct.smpType_struct** %25, align 8
  %27 = icmp ne %struct.smpType_struct* %26, null
  br i1 %27, label %28, label %40

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %30 = load %struct.smpType_struct** %29, align 8
  %31 = getelementptr inbounds %struct.smpType_struct* %30, i32 0, i32 0
  %32 = load i8** %31, align 8
  call void @smpString_init(%struct.obj_struct* sret %3, i8* %32)
  %33 = getelementptr inbounds %struct.smpTypeError_struct* %core, i32 0, i32 2
  %34 = load %struct.smpType_struct** %33, align 8
  %35 = getelementptr inbounds %struct.smpType_struct* %34, i32 0, i32 0
  %36 = load i8** %35, align 8
  call void @smpString_init(%struct.obj_struct* sret %4, i8* %36)
  %37 = getelementptr inbounds %struct.smpTypeError_struct* %core, i32 0, i32 3
  %38 = bitcast %struct.obj_struct* %5 to i8*
  %39 = bitcast %struct.obj_struct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smpGlobal_sprintf(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([28 x i8]* @.str112, i32 0, i32 0), %struct.obj_struct* byval %3, %struct.obj_struct* byval %4, %struct.obj_struct* byval %5)
  br label %48

; <label>:40                                      ; preds = %24
  %41 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %42 = load %struct.smpType_struct** %41, align 8
  %43 = getelementptr inbounds %struct.smpType_struct* %42, i32 0, i32 0
  %44 = load i8** %43, align 8
  call void @smpString_init(%struct.obj_struct* sret %6, i8* %44)
  %45 = getelementptr inbounds %struct.smpTypeError_struct* %core, i32 0, i32 3
  %46 = bitcast %struct.obj_struct* %7 to i8*
  %47 = bitcast %struct.obj_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smpGlobal_sprintf(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([20 x i8]* @.str113, i32 0, i32 0), %struct.obj_struct* byval %6, %struct.obj_struct* byval %7)
  br label %48

; <label>:48                                      ; preds = %40, %28
  br label %49

; <label>:49                                      ; preds = %48, %21
  %50 = getelementptr inbounds %struct.smpTypeError_struct* %core, i32 0, i32 1
  %51 = getelementptr inbounds %struct.obj_struct* %50, i32 0, i32 2
  %52 = load %struct.smpType_struct** %51, align 8
  %53 = getelementptr inbounds %struct.smpType_struct* %52, i32 0, i32 1
  %54 = load i32* %53, align 4
  %55 = load i32* @smpType_id_nil, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %49
  %58 = bitcast %struct.obj_struct* %agg.result to i8*
  %59 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  br label %90

; <label>:60                                      ; preds = %49
  call void @smpString_init(%struct.obj_struct* sret %newline, i8* getelementptr inbounds ([1 x i8]* @.str114, i32 0, i32 0))
  %61 = bitcast %struct.obj_struct* %8 to i8*
  %62 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %9, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %newline)
  call void @obj_clear(%struct.obj_struct* sret %10, %struct.obj_struct* %newline)
  call void (%struct.obj_struct*, i8*, ...)* @smpString_init_fmt(%struct.obj_struct* sret %separator, i8* getelementptr inbounds ([8 x i8]* @.str111, i32 0, i32 0))
  %63 = getelementptr inbounds %struct.smpTypeError_struct* %core, i32 0, i32 1
  %64 = bitcast %struct.obj_struct* %11 to i8*
  %65 = bitcast %struct.obj_struct* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %str, %struct.obj_struct* byval %11, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 1, %struct.obj_struct* %separator)
  %66 = getelementptr inbounds %struct.obj_struct* %str, i32 0, i32 2
  %67 = load %struct.smpType_struct** %66, align 8
  %68 = getelementptr inbounds %struct.smpType_struct* %67, i32 0, i32 0
  %69 = load i8** %68, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

; <label>:72                                      ; preds = %60
  %73 = bitcast %struct.obj_struct* %agg.result to i8*
  %74 = bitcast %struct.obj_struct* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 8, i1 false)
  br label %90

; <label>:75                                      ; preds = %60
  %76 = bitcast %struct.obj_struct* %12 to i8*
  %77 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %code, %struct.obj_struct* byval %12, i32 1, %struct.obj_struct* %str)
  %78 = getelementptr inbounds %struct.obj_struct* %code, i32 0, i32 2
  %79 = load %struct.smpType_struct** %78, align 8
  %80 = getelementptr inbounds %struct.smpType_struct* %79, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

; <label>:84                                      ; preds = %75
  %85 = bitcast %struct.obj_struct* %agg.result to i8*
  %86 = bitcast %struct.obj_struct* %code to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 32, i32 8, i1 false)
  br label %90

; <label>:87                                      ; preds = %75
  %88 = bitcast %struct.obj_struct* %agg.result to i8*
  %89 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 32, i32 8, i1 false)
  br label %90

; <label>:90                                      ; preds = %87, %84, %72, %57
  ret void
}

define void @smpException_backtrace_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %exc, %struct.obj_struct* byval %obj, %struct.obj_struct* byval %fun) nounwind {
  %pair = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %bt = alloca %struct.obj_struct*, align 8
  %2 = alloca %struct.obj_struct, align 8
  %bt1 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = bitcast %struct.obj_struct* %1 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpObject_cons(%struct.obj_struct* sret %pair, %struct.obj_struct* byval %1, i32 1, %struct.obj_struct* %fun)
  %6 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 2
  %7 = load %struct.smpType_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smpType_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([10 x i8]* @.str47, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smpTypeError_struct*
  %16 = getelementptr inbounds %struct.smpTypeError_struct* %15, i32 0, i32 1
  store %struct.obj_struct* %16, %struct.obj_struct** %bt, align 8
  %17 = load %struct.obj_struct** %bt, align 8
  %18 = bitcast %struct.obj_struct* %2 to i8*
  %19 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = load %struct.obj_struct** %bt, align 8
  call void @smpObject_cons(%struct.obj_struct* sret %17, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* %20)
  br label %30

; <label>:21                                      ; preds = %0
  %22 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.minipair_struct*
  %25 = getelementptr inbounds %struct.minipair_struct* %24, i32 0, i32 1
  store %struct.obj_struct* %25, %struct.obj_struct** %bt1, align 8
  %26 = load %struct.obj_struct** %bt1, align 8
  %27 = bitcast %struct.obj_struct* %3 to i8*
  %28 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  %29 = load %struct.obj_struct** %bt1, align 8
  call void @smpObject_cons(%struct.obj_struct* sret %26, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* %29)
  br label %30

; <label>:30                                      ; preds = %21, %12
  %31 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpException_init(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type) nounwind {
  %res = alloca %struct.minipair_struct, align 8
  %wrapper = alloca %struct.obj_struct, align 8
  %1 = getelementptr inbounds %struct.minipair_struct* %res, i32 0, i32 0
  store i8* null, i8** %1, align 8
  %2 = getelementptr inbounds %struct.minipair_struct* %res, i32 0, i32 1
  %3 = bitcast %struct.obj_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %4 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smpType_struct* %6)
  %7 = call i8* @smp_malloc(i64 40)
  %8 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.minipair_struct*
  %12 = bitcast %struct.minipair_struct* %11 to i8*
  %13 = bitcast %struct.minipair_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 40, i32 8, i1 false)
  %14 = bitcast %struct.obj_struct* %agg.result to i8*
  %15 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*)

define void @smpException_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca %struct.obj_struct, align 8
  %2 = load %struct.__sFILE** @smp_stderr, align 8
  %3 = bitcast %struct.obj_struct* %1 to i8*
  %4 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.__sFILE*, i8*, ...)* @smpGlobal_fprintf(%struct.obj_struct* sret %agg.result, %struct.__sFILE* %2, i8* getelementptr inbounds ([4 x i8]* @.str109, i32 0, i32 0), %struct.obj_struct* byval %1)
  ret void
}

define void @smpGlobal_fprintf(%struct.obj_struct* sret %agg.result, %struct.__sFILE* %fp, i8* %format, ...) nounwind {
  %1 = alloca %struct.__sFILE*, align 8
  %2 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %1, align 8
  store i8* %format, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpGlobal_vsprintf(%struct.obj_struct* sret %res, i8* %6, %struct.__va_list_tag* %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_end(i8* %9)
  %10 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %11 = load %struct.smpType_struct** %10, align 8
  %12 = getelementptr inbounds %struct.smpType_struct* %11, i32 0, i32 0
  %13 = load i8** %12, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %0
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  %18 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  br label %23

; <label>:19                                      ; preds = %0
  %20 = load %struct.__sFILE** %1, align 8
  %21 = bitcast %struct.obj_struct* %3 to i8*
  %22 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void @smpGlobal_fprint(%struct.obj_struct* sret %agg.result, %struct.__sFILE* %20, %struct.obj_struct* byval %3)
  br label %23

; <label>:23                                      ; preds = %19, %16
  ret void
}

define void @smpList_car(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpPair_struct*
  %6 = getelementptr inbounds %struct.smpPair_struct* %5, i32 0, i32 0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  %8 = bitcast %struct.obj_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  ret void
}

define void @smpTypeError_init_detailed(%struct.obj_struct* sret %agg.result, %struct.smpType_struct* %expected, %struct.obj_struct* byval %found, i8* %fmt, ...) nounwind {
  %1 = alloca %struct.smpType_struct*, align 8
  %2 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.smpTypeError_struct, align 8
  %ap1 = alloca [1 x %struct.__va_list_tag], align 8
  %wrapper = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.smpType_struct* %expected, %struct.smpType_struct** %1, align 8
  store i8* %fmt, i8** %2, align 8
  %4 = load i32* @gc_runningp, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load %struct.__sFILE** @__stderrp, align 8
  %10 = load i8** %2, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %12 = call i32 @vfprintf(%struct.__sFILE* %9, i8* %10, %struct.__va_list_tag* %11)
  %13 = load %struct.__sFILE** @__stderrp, align 8
  %14 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %16 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_end(i8* %16)
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %47

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 1
  %21 = bitcast %struct.obj_struct* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %22 = load %struct.smpType_struct** %1, align 8
  %23 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 2
  store %struct.smpType_struct* %22, %struct.smpType_struct** %23, align 8
  %24 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 3
  %25 = bitcast %struct.obj_struct* %24 to i8*
  %26 = bitcast %struct.obj_struct* %found to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_start(i8* %28)
  %29 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 0
  %30 = load i8** %2, align 8
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %32 = call i32 @vasprintf(i8** %29, i8* %30, %struct.__va_list_tag* %31)
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %34 = bitcast %struct.__va_list_tag* %33 to i8*
  call void @llvm.va_end(i8* %34)
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([10 x i8]* @.str47, i32 0, i32 0))
  %35 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smpType_struct* %37)
  %38 = call i8* @smp_malloc(i64 80)
  %39 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %41 = load i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.smpTypeError_struct*
  %43 = bitcast %struct.smpTypeError_struct* %42 to i8*
  %44 = bitcast %struct.smpTypeError_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 80, i32 8, i1 false)
  %45 = bitcast %struct.obj_struct* %agg.result to i8*
  %46 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  br label %47

; <label>:47                                      ; preds = %18, %6
  ret void
}

define void @smpTypeError_init_fmt(%struct.obj_struct* sret %agg.result, i8* %fmt, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.smpTypeError_struct, align 8
  %ap1 = alloca [1 x %struct.__va_list_tag], align 8
  %wrapper = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i8* %fmt, i8** %1, align 8
  %3 = load i32* @gc_runningp, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %17

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct.__sFILE** @__stderrp, align 8
  %9 = load i8** %1, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %11 = call i32 @vfprintf(%struct.__sFILE* %8, i8* %9, %struct.__va_list_tag* %10)
  %12 = load %struct.__sFILE** @__stderrp, align 8
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %43

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_start(i8* %19)
  %20 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 0
  %21 = load i8** %1, align 8
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %23 = call i32 @vasprintf(i8** %20, i8* %21, %struct.__va_list_tag* %22)
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_end(i8* %25)
  %26 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 1
  %27 = bitcast %struct.obj_struct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %28 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 2
  store %struct.smpType_struct* null, %struct.smpType_struct** %28, align 8
  %29 = getelementptr inbounds %struct.smpTypeError_struct* %res, i32 0, i32 3
  %30 = bitcast %struct.obj_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([10 x i8]* @.str47, i32 0, i32 0))
  %31 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %32 = load i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smpType_struct* %33)
  %34 = call i8* @smp_malloc(i64 80)
  %35 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %37 = load i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.smpTypeError_struct*
  %39 = bitcast %struct.smpTypeError_struct* %38 to i8*
  %40 = bitcast %struct.smpTypeError_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 80, i32 8, i1 false)
  %41 = bitcast %struct.obj_struct* %agg.result to i8*
  %42 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  br label %43

; <label>:43                                      ; preds = %17, %5
  ret void
}

define i32 @smpFloat_create_class() nounwind {
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
  %44 = alloca %struct.obj_struct, align 8
  %45 = alloca %struct.obj_struct, align 8
  %46 = alloca %struct.obj_struct, align 8
  %pi = alloca [1 x %struct.anon]*, align 8
  %47 = alloca %struct.obj_struct, align 8
  %48 = alloca %struct.obj_struct, align 8
  %49 = alloca %struct.obj_struct, align 8
  %e = alloca [1 x %struct.anon]*, align 8
  %one = alloca [1 x %struct.anon], align 8
  %50 = alloca %struct.obj_struct, align 8
  %51 = alloca %struct.obj_struct, align 8
  %52 = alloca %struct.obj_struct, align 8
  store i32 1, i32* @smp_mpfr_rnd, align 4
  store i64 53, i64* @smp_mpfr_default_prec, align 8
  %53 = load i64* @smp_mpfr_default_prec, align 8
  call void @mpfr_set_default_prec(i64 %53)
  call void @smp_getclass(%struct.obj_struct* sret %number, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %54 = getelementptr inbounds %struct.obj_struct* %number, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to %struct.smpType_struct*
  %57 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([6 x i8]* @.str116, i32 0, i32 0), %struct.smpType_struct* %56, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %floatclass, i8* getelementptr inbounds ([6 x i8]* @.str116, i32 0, i32 0))
  %58 = getelementptr inbounds %struct.obj_struct* %floatclass, i32 0, i32 3
  %59 = load i8** %58, align 8
  %60 = bitcast i8* %59 to %struct.smpType_struct*
  %61 = bitcast %struct.smpType_struct* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_float to i8*), i8* %61, i64 64, i32 8, i1 false)
  call void @minihash_get(%struct.obj_struct* sret %1, %struct.minihash_struct* @smpType_ids, i8* getelementptr inbounds ([6 x i8]* @.str116, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %63 = load i8** %62, align 8
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* @smpType_id_float, align 4
  %65 = bitcast %struct.obj_struct* %2 to i8*
  %66 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %3, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %4, %struct.obj_struct* byval %2, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %3)
  %67 = bitcast %struct.obj_struct* %5 to i8*
  %68 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %6, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_add, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %7, %struct.obj_struct* byval %5, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str64, i32 0, i32 0), %struct.obj_struct* byval %6)
  %69 = bitcast %struct.obj_struct* %8 to i8*
  %70 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %9, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_sub, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %10, %struct.obj_struct* byval %8, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str65, i32 0, i32 0), %struct.obj_struct* byval %9)
  %71 = bitcast %struct.obj_struct* %11 to i8*
  %72 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %12, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_mul, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %13, %struct.obj_struct* byval %11, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str66, i32 0, i32 0), %struct.obj_struct* byval %12)
  %73 = bitcast %struct.obj_struct* %14 to i8*
  %74 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %15, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_div, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %16, %struct.obj_struct* byval %14, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str67, i32 0, i32 0), %struct.obj_struct* byval %15)
  %75 = bitcast %struct.obj_struct* %17 to i8*
  %76 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %18, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_pow, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %19, %struct.obj_struct* byval %17, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str117, i32 0, i32 0), %struct.obj_struct* byval %18)
  %77 = bitcast %struct.obj_struct* %20 to i8*
  %78 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %21, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %22, %struct.obj_struct* byval %20, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str48, i32 0, i32 0), %struct.obj_struct* byval %21)
  %79 = bitcast %struct.obj_struct* %23 to i8*
  %80 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %24, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_nequalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %25, %struct.obj_struct* byval %23, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), %struct.obj_struct* byval %24)
  %81 = bitcast %struct.obj_struct* %26 to i8*
  %82 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %27, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_lt, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %28, %struct.obj_struct* byval %26, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str119, i32 0, i32 0), %struct.obj_struct* byval %27)
  %83 = bitcast %struct.obj_struct* %29 to i8*
  %84 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %30, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_le, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %31, %struct.obj_struct* byval %29, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str120, i32 0, i32 0), %struct.obj_struct* byval %30)
  %85 = bitcast %struct.obj_struct* %32 to i8*
  %86 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %33, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_ge, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %34, %struct.obj_struct* byval %32, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str121, i32 0, i32 0), %struct.obj_struct* byval %33)
  %87 = bitcast %struct.obj_struct* %35 to i8*
  %88 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %36, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_gt, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %37, %struct.obj_struct* byval %35, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str122, i32 0, i32 0), %struct.obj_struct* byval %36)
  %89 = bitcast %struct.obj_struct* %38 to i8*
  %90 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %39, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_eq, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %40, %struct.obj_struct* byval %38, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), %struct.obj_struct* byval %39)
  %91 = bitcast %struct.obj_struct* %41 to i8*
  %92 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %42, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %43, %struct.obj_struct* byval %41, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), %struct.obj_struct* byval %42)
  %93 = bitcast %struct.obj_struct* %44 to i8*
  %94 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %45, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFloat_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %46, %struct.obj_struct* byval %44, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %45)
  %95 = call i8* @smp_malloc(i64 32)
  %96 = bitcast i8* %95 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %96, [1 x %struct.anon]** %pi, align 8
  %97 = load [1 x %struct.anon]** %pi, align 8
  %98 = getelementptr inbounds [1 x %struct.anon]* %97, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %98)
  %99 = load [1 x %struct.anon]** %pi, align 8
  %100 = getelementptr inbounds [1 x %struct.anon]* %99, i32 0, i32 0
  %101 = load i32* @smp_mpfr_rnd, align 4
  %102 = call i32 @mpfr_const_pi(%struct.anon* %100, i32 %101)
  %103 = bitcast %struct.obj_struct* %47 to i8*
  %104 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 32, i32 8, i1 false)
  %105 = load [1 x %struct.anon]** %pi, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %48, [1 x %struct.anon]* %105)
  call void @smpType_defvar(%struct.obj_struct* sret %49, %struct.obj_struct* byval %47, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str123, i32 0, i32 0), %struct.obj_struct* byval %48)
  %106 = call i8* @smp_malloc(i64 32)
  %107 = bitcast i8* %106 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %107, [1 x %struct.anon]** %e, align 8
  %108 = load [1 x %struct.anon]** %e, align 8
  %109 = getelementptr inbounds [1 x %struct.anon]* %108, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %109)
  %110 = getelementptr inbounds [1 x %struct.anon]* %one, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %110)
  %111 = getelementptr inbounds [1 x %struct.anon]* %one, i32 0, i32 0
  %112 = load i32* @smp_mpfr_rnd, align 4
  %113 = call i32 @mpfr_set_ui_2exp(%struct.anon* %111, i64 1, i64 0, i32 %112)
  %114 = load [1 x %struct.anon]** %e, align 8
  %115 = getelementptr inbounds [1 x %struct.anon]* %114, i32 0, i32 0
  %116 = getelementptr inbounds [1 x %struct.anon]* %one, i32 0, i32 0
  %117 = load i32* @smp_mpfr_rnd, align 4
  %118 = call i32 @mpfr_exp(%struct.anon* %115, %struct.anon* %116, i32 %117)
  %119 = bitcast %struct.obj_struct* %50 to i8*
  %120 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 32, i32 8, i1 false)
  %121 = load [1 x %struct.anon]** %e, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %51, [1 x %struct.anon]* %121)
  call void @smpType_defvar(%struct.obj_struct* sret %52, %struct.obj_struct* byval %50, i32 1, i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), %struct.obj_struct* byval %51)
  %122 = getelementptr inbounds [1 x %struct.anon]* %one, i32 0, i32 0
  call void @mpfr_clear(%struct.anon* %122)
  ret i32 0
}

declare void @mpfr_set_default_prec(i64)

define void @smpFloat_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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

define void @smpFloat_add(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_float, align 4
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
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %71

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_int, align 4
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
  %58 = bitcast i8* %57 to [1 x %5]*
  %59 = getelementptr inbounds [1 x %5]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_add_z(%struct.anon* %49, %struct.anon* %53, %5* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %71

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %65 = load i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.smpType_struct*
  %67 = load %struct.obj_struct** %2, align 8
  %68 = getelementptr inbounds %struct.obj_struct* %67, i64 0
  %69 = bitcast %struct.obj_struct* %5 to i8*
  %70 = bitcast %struct.obj_struct* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %66, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %71

; <label>:71                                      ; preds = %63, %43, %14
  ret void
}

define void @smpFloat_sub(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_float, align 4
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
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %71

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_int, align 4
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
  %58 = bitcast i8* %57 to [1 x %5]*
  %59 = getelementptr inbounds [1 x %5]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_sub_z(%struct.anon* %49, %struct.anon* %53, %5* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %71

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %65 = load i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.smpType_struct*
  %67 = load %struct.obj_struct** %2, align 8
  %68 = getelementptr inbounds %struct.obj_struct* %67, i64 0
  %69 = bitcast %struct.obj_struct* %5 to i8*
  %70 = bitcast %struct.obj_struct* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %66, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %71

; <label>:71                                      ; preds = %63, %43, %14
  ret void
}

define void @smpFloat_mul(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_float, align 4
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
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %71

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_int, align 4
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
  %58 = bitcast i8* %57 to [1 x %5]*
  %59 = getelementptr inbounds [1 x %5]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_mul_z(%struct.anon* %49, %struct.anon* %53, %5* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %71

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %65 = load i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.smpType_struct*
  %67 = load %struct.obj_struct** %2, align 8
  %68 = getelementptr inbounds %struct.obj_struct* %67, i64 0
  %69 = bitcast %struct.obj_struct* %5 to i8*
  %70 = bitcast %struct.obj_struct* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %66, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %71

; <label>:71                                      ; preds = %63, %43, %14
  ret void
}

define void @smpFloat_div(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_float, align 4
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
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %71

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_int, align 4
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
  %58 = bitcast i8* %57 to [1 x %5]*
  %59 = getelementptr inbounds [1 x %5]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_div_z(%struct.anon* %49, %struct.anon* %53, %5* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %71

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %65 = load i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.smpType_struct*
  %67 = load %struct.obj_struct** %2, align 8
  %68 = getelementptr inbounds %struct.obj_struct* %67, i64 0
  %69 = bitcast %struct.obj_struct* %5 to i8*
  %70 = bitcast %struct.obj_struct* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %66, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %71

; <label>:71                                      ; preds = %63, %43, %14
  ret void
}

define void @smpFloat_pow(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_float, align 4
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
  %32 = call i32 @mpfr_pow(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30, i32 %31)
  %33 = load [1 x %struct.anon]** %f, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %71

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_int, align 4
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
  %58 = bitcast i8* %57 to [1 x %5]*
  %59 = getelementptr inbounds [1 x %5]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_pow_z(%struct.anon* %49, %struct.anon* %53, %5* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %71

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %65 = load i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.smpType_struct*
  %67 = load %struct.obj_struct** %2, align 8
  %68 = getelementptr inbounds %struct.obj_struct* %67, i64 0
  %69 = bitcast %struct.obj_struct* %5 to i8*
  %70 = bitcast %struct.obj_struct* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %66, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %71

; <label>:71                                      ; preds = %63, %43, %14
  ret void
}

define void @smpInteger_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpInteger_nequalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpFloat_lt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpFloat_le(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp sle i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpFloat_ge(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpFloat_gt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpFloat_eq(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpFloat_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i32 %6, %struct.obj_struct* %7)
  ret void
}

define void @smpFloat_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpFloat_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %17 = load %struct.smpType_struct** %16, align 8
  %18 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %17, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %42, label %20

; <label>:20                                      ; preds = %13
  %21 = load %struct.obj_struct** %2, align 8
  %22 = getelementptr inbounds %struct.obj_struct* %21, i64 0
  %23 = getelementptr inbounds %struct.obj_struct* %22, i32 0, i32 2
  %24 = load %struct.smpType_struct** %23, align 8
  %25 = getelementptr inbounds %struct.smpType_struct* %24, i32 0, i32 0
  %26 = load i8** %25, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
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
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  %35 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.smpType_struct*
  %38 = load %struct.obj_struct** %2, align 8
  %39 = getelementptr inbounds %struct.obj_struct* %38, i64 0
  %40 = bitcast %struct.obj_struct* %5 to i8*
  %41 = bitcast %struct.obj_struct* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %37, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %72

; <label>:42                                      ; preds = %13
  %43 = load %struct.obj_struct** %2, align 8
  %44 = getelementptr inbounds %struct.obj_struct* %43, i64 0
  %45 = getelementptr inbounds %struct.obj_struct* %44, i32 0, i32 3
  %46 = load i8** %45, align 8
  %47 = bitcast i8* %46 to [1 x %5]*
  %48 = getelementptr inbounds [1 x %5]* %47, i32 0, i32 0
  %49 = call i32 @__gmpz_fits_sint_p(%5* %48) readonly
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

; <label>:51                                      ; preds = %42
  %52 = load %struct.obj_struct** %2, align 8
  %53 = getelementptr inbounds %struct.obj_struct* %52, i64 0
  %54 = getelementptr inbounds %struct.obj_struct* %53, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %5]*
  %57 = getelementptr inbounds [1 x %5]* %56, i32 0, i32 0
  %58 = call i64 @__gmpz_get_si(%5* %57) readonly
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %digits, align 4
  br label %60

; <label>:60                                      ; preds = %51, %42
  br label %61

; <label>:61                                      ; preds = %60, %0
  %62 = getelementptr inbounds [100 x i8]* %fmt, i32 0, i32 0
  %63 = load i32* %digits, align 4
  %64 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %62, i32 0, i64 100, i8* getelementptr inbounds ([9 x i8]* @.str125, i32 0, i32 0), i32 %63)
  %65 = getelementptr inbounds [100 x i8]* %fmt, i32 0, i32 0
  %66 = load i32* @smp_mpfr_rnd, align 4
  %67 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %68 = load i8** %67, align 8
  %69 = bitcast i8* %68 to [1 x %struct.anon]*
  %70 = getelementptr inbounds [1 x %struct.anon]* %69, i32 0, i32 0
  %71 = call i32 (i8**, i8*, ...)* @mpfr_asprintf(i8** %str, i8* %65, i32 %66, %struct.anon* %70)
  call void @smpString_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  br label %72

; <label>:72                                      ; preds = %61, %34, %29
  ret void
}

declare void @mpfr_init(%struct.anon*)

declare i32 @mpfr_const_pi(%struct.anon*, i32)

define void @smpType_defvar(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i32 %flags, i8* %name, %struct.obj_struct* byval %var) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %flags, i32* %1, align 4
  store i8* %name, i8** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load i32* %1, align 4
  %8 = or i32 %7, 256
  %9 = load i8** %2, align 8
  %10 = bitcast %struct.obj_struct* %4 to i8*
  %11 = bitcast %struct.obj_struct* %var to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void @smpType_def_general(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i32 %8, i8* %9, %struct.obj_struct* byval %4)
  ret void
}

define void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %x) nounwind {
  %1 = alloca [1 x %struct.anon]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store [1 x %struct.anon]* %x, [1 x %struct.anon]** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_float)
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

define void @smpFloat_init_mpfr(%struct.obj_struct* sret %agg.result, %struct.anon* %x) nounwind {
  %1 = alloca %struct.anon*, align 8
  %res = alloca %struct.obj_struct, align 8
  store %struct.anon* %x, %struct.anon** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_float)
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

declare i32 @mpfr_set4(%struct.anon*, %struct.anon*, i32, i32)

declare i32 @mpfr_set_d(%struct.anon*, double, i32)

define void @smpFloat_init_str(%struct.obj_struct* sret %agg.result, i8* %str) nounwind {
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
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %res, [1 x %struct.anon]* %9)
  %10 = bitcast %struct.obj_struct* %agg.result to i8*
  %11 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @mpfr_init_set_str(%struct.anon*, i8*, i32, i32)

declare i32 @mpfr_add(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_add_z(%struct.anon*, %struct.anon*, %5*, i32)

declare i32 @mpfr_sub(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_sub_z(%struct.anon*, %struct.anon*, %5*, i32)

declare i32 @mpfr_mul(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_mul_z(%struct.anon*, %struct.anon*, %5*, i32)

declare i32 @mpfr_div(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_div_z(%struct.anon*, %struct.anon*, %5*, i32)

declare i32 @mpfr_pow(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_pow_z(%struct.anon*, %struct.anon*, %5*, i32)

define i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %7 = load %struct.smpType_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smpType_struct* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = load i32* @smpType_id_int, align 4
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
  %21 = bitcast i8* %20 to [1 x %5]*
  %22 = getelementptr inbounds [1 x %5]* %21, i32 0, i32 0
  %23 = call i32 @mpfr_cmp_z(%struct.anon* %16, %5* %22)
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
  %37 = load %struct.smpType_struct** %36, align 8
  %38 = getelementptr inbounds %struct.smpType_struct* %37, i32 0, i32 1
  %39 = load i32* %38, align 4
  %40 = load i32* @smpType_id_float, align 4
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

declare i32 @mpfr_cmp_z(%struct.anon*, %5*)

declare i32 @mpfr_cmp3(%struct.anon*, %struct.anon*, i32)

define void @smpFloat_cmp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %10 = call i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %3, i32 %8, %struct.obj_struct* %9)
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
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* null, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %21

; <label>:18                                      ; preds = %0
  %19 = load i32* %num, align 4
  %20 = sext i32 %19 to i64
  call void @smpInteger_init_clong(%struct.obj_struct* sret %agg.result, i64 %20)
  br label %21

; <label>:21                                      ; preds = %18, %13
  ret void
}

define void @smpFloat_nequalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpFloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

declare double @log10(double)

declare i32 @__gmpz_fits_sint_p(%5*) readonly

declare i64 @__gmpz_get_si(%5*) readonly

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...)

declare i32 @mpfr_asprintf(i8**, i8*, ...)

define void @smpString_init_ref(%struct.obj_struct* sret %agg.result, i8** %str) nounwind {
  %1 = alloca i8**, align 8
  %res = alloca %struct.obj_struct, align 8
  %core = alloca %struct.smpstrstruct, align 8
  store i8** %str, i8*** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_string)
  %2 = call i8* @smp_malloc(i64 16)
  %3 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %2, i8** %3, align 8
  %4 = load i8*** %1, align 8
  %5 = load i8** %4
  %6 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  store i8* %5, i8** %6, align 8
  %7 = load i8*** %1, align 8
  %8 = load i8** %7
  %9 = call i64 @strlen(i8* %8)
  %10 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smpstrstruct*
  %14 = bitcast %struct.smpstrstruct* %13 to i8*
  %15 = bitcast %struct.smpstrstruct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  ret void
}

define i32 @smpFunction_create_class() nounwind {
  %function = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  call void @smp_getclass(%struct.obj_struct* sret %function, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %10 = bitcast %struct.obj_struct* %1 to i8*
  %11 = bitcast %struct.obj_struct* %function to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFunction_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %2)
  %12 = bitcast %struct.obj_struct* %4 to i8*
  %13 = bitcast %struct.obj_struct* %function to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFunction_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %5)
  %14 = bitcast %struct.obj_struct* %7 to i8*
  %15 = bitcast %struct.obj_struct* %function to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpFunction_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %8)
  ret i32 0
}

define void @smpFunction_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpFunction_struct, align 8
  %i = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpFunction_struct*
  %6 = bitcast %struct.smpFunction_struct* %core to i8*
  %7 = bitcast %struct.smpFunction_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 40, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.smpFunction_struct* %core, i32 0, i32 1
  %9 = load i8** %8, align 8
  call void @smp_free(i8* %9)
  store i32 0, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %28, %0
  %11 = load i32* %i, align 4
  %12 = bitcast %struct.smpFunction_struct* %core to i8*
  %13 = getelementptr i8* %12, i32 24
  %14 = bitcast i8* %13 to i32*
  %15 = load i32* %14, align 8
  %16 = and i32 %15, 65535
  %17 = shl i32 %16, 16
  %18 = ashr i32 %17, 16
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %31

; <label>:20                                      ; preds = %10
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.smpFunction_struct* %core, i32 0, i32 2
  %24 = load %struct.argspec_struct** %23, align 8
  %25 = getelementptr inbounds %struct.argspec_struct* %24, i64 %22
  %26 = getelementptr inbounds %struct.argspec_struct* %25, i32 0, i32 0
  %27 = load i8** %26, align 8
  call void @smp_free(i8* %27)
  br label %28

; <label>:28                                      ; preds = %20
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %10

; <label>:31                                      ; preds = %10
  %32 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %33 = load i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.smpFunction_struct*
  %35 = getelementptr inbounds %struct.smpFunction_struct* %34, i32 0, i32 2
  %36 = load %struct.argspec_struct** %35, align 8
  %37 = bitcast %struct.argspec_struct* %36 to i8*
  call void @smp_free(i8* %37)
  %38 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpFunction_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpFunction_struct, align 8
  %i = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpFunction_struct*
  %7 = bitcast %struct.smpFunction_struct* %core to i8*
  %8 = bitcast %struct.smpFunction_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 40, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %45, %0
  %10 = load i32* %i, align 4
  %11 = bitcast %struct.smpFunction_struct* %core to i8*
  %12 = getelementptr i8* %11, i32 24
  %13 = bitcast i8* %12 to i32*
  %14 = load i32* %13, align 8
  %15 = and i32 %14, 65535
  %16 = shl i32 %15, 16
  %17 = ashr i32 %16, 16
  %18 = icmp slt i32 %10, %17
  br i1 %18, label %19, label %48

; <label>:19                                      ; preds = %9
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.smpFunction_struct* %core, i32 0, i32 2
  %23 = load %struct.argspec_struct** %22, align 8
  %24 = getelementptr inbounds %struct.argspec_struct* %23, i64 %21
  %25 = bitcast %struct.argspec_struct* %24 to i8*
  %26 = getelementptr i8* %25, i32 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32* %27, align 8
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = shl i32 %30, 31
  %32 = ashr i32 %31, 31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

; <label>:34                                      ; preds = %19
  %35 = load i32* %i, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.smpFunction_struct* %core, i32 0, i32 2
  %38 = load %struct.argspec_struct** %37, align 8
  %39 = getelementptr inbounds %struct.argspec_struct* %38, i64 %36
  %40 = getelementptr inbounds %struct.argspec_struct* %39, i32 0, i32 2
  %41 = bitcast %struct.obj_struct* %3 to i8*
  %42 = bitcast %struct.obj_struct* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  %43 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  br label %44

; <label>:44                                      ; preds = %34, %19
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %9

; <label>:48                                      ; preds = %9
  %49 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpFunction_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpFunction_struct*
  %6 = getelementptr inbounds %struct.smpFunction_struct* %5, i32 0, i32 1
  %7 = load i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smpFunction_struct*
  %13 = getelementptr inbounds %struct.smpFunction_struct* %12, i32 0, i32 1
  %14 = load i8** %13, align 8
  call void (%struct.obj_struct*, i8*, ...)* @smpString_init_fmt(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([5 x i8]* @.str133, i32 0, i32 0), i8* %14)
  br label %21

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smpFunction_struct*
  %19 = getelementptr inbounds %struct.smpFunction_struct* %18, i32 0, i32 4
  %20 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %19, align 8
  call void (%struct.obj_struct*, i8*, ...)* @smpString_init_fmt(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([16 x i8]* @.str134, i32 0, i32 0), void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %20)
  br label %21

; <label>:21                                      ; preds = %15, %9
  ret void
}

define i32 @smp_thrown_exceptionp_c(%struct.obj_struct* byval %obj) nounwind {
; <label>:0
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %2 = load %struct.smpType_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smpType_struct* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = load i32* @smpType_id_thrown, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %17

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smpThrown_struct*
  %11 = bitcast %struct.smpThrown_struct* %10 to i32*
  %12 = load i32* %11, align 8
  %13 = and i32 %12, 15
  %14 = shl i32 %13, 28
  %15 = ashr i32 %14, 28
  %16 = icmp eq i32 %15, 0
  br label %17

; <label>:17                                      ; preds = %7, %0
  %18 = phi i1 [ false, %0 ], [ %16, %7 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

define void @smpFunction_init_v(%struct.obj_struct* sret %agg.result, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %fun, i32 %argc, %struct.__va_list_tag* %ap) nounwind {
  %1 = alloca void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.__va_list_tag*, align 8
  %res = alloca %struct.obj_struct, align 8
  %smp_fun = alloca %struct.smpFunction_struct, align 8
  %4 = alloca i8*
  %optionalp = alloca i32, align 4
  %arg = alloca i8*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca i32
  store void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %fun, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %1, align 8
  store i32 %argc, i32* %2, align 4
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %3, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_function)
  %8 = getelementptr inbounds %struct.smpFunction_struct* %smp_fun, i32 0, i32 1
  store i8* null, i8** %8, align 8
  %9 = bitcast %struct.smpFunction_struct* %smp_fun to i32*
  %10 = load i32* %9, align 8
  %11 = and i32 %10, -256
  store i32 %11, i32* %9, align 8
  %12 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %1, align 8
  %13 = getelementptr inbounds %struct.smpFunction_struct* %smp_fun, i32 0, i32 4
  store void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %12, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %13, align 8
  %14 = load i32* %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %273

; <label>:18                                      ; preds = %0
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4
  %20 = load i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 56, %21
  %23 = alloca i8, i64 %22, align 16
  %24 = bitcast i8* %23 to %struct.argspec_struct*
  store i32 0, i32* %optionalp, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %length, align 4
  br label %25

; <label>:25                                      ; preds = %210, %18
  %26 = load i32* %i, align 4
  %27 = load i32* %2, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %215

; <label>:29                                      ; preds = %25
  %30 = load i32* %length, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.argspec_struct* %24, i64 %31
  %33 = bitcast %struct.argspec_struct* %32 to i8*
  %34 = getelementptr i8* %33, i32 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32* %35, align 8
  %37 = and i32 %36, -2
  store i32 %37, i32* %35, align 8
  %38 = load i32* %optionalp, align 4
  %39 = load i32* %length, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.argspec_struct* %24, i64 %40
  %42 = and i32 %38, 1
  %43 = shl i32 %42, 31
  %44 = ashr i32 %43, 31
  %45 = bitcast %struct.argspec_struct* %41 to i8*
  %46 = getelementptr i8* %45, i32 8
  %47 = bitcast i8* %46 to i32*
  %48 = and i32 %42, 1
  %49 = shl i32 %48, 1
  %50 = load i32* %47, align 8
  %51 = and i32 %50, -3
  %52 = or i32 %51, %49
  store i32 %52, i32* %47, align 8
  %53 = load i32* %length, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.argspec_struct* %24, i64 %54
  %56 = getelementptr inbounds %struct.argspec_struct* %55, i32 0, i32 2
  %57 = bitcast %struct.obj_struct* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %58 = load i32* %length, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.argspec_struct* %24, i64 %59
  %61 = bitcast %struct.argspec_struct* %60 to i8*
  %62 = getelementptr i8* %61, i32 48
  %63 = bitcast i8* %62 to i32*
  %64 = load i32* %63, align 8
  %65 = and i32 %64, -2
  store i32 %65, i32* %63, align 8
  %66 = load %struct.__va_list_tag** %3, align 8
  %67 = getelementptr inbounds %struct.__va_list_tag* %66, i32 0, i32 0
  %68 = load i32* %67
  %69 = icmp ule i32 %68, 40
  br i1 %69, label %70, label %76

; <label>:70                                      ; preds = %29
  %71 = getelementptr inbounds %struct.__va_list_tag* %66, i32 0, i32 3
  %72 = load i8** %71
  %73 = getelementptr i8* %72, i32 %68
  %74 = bitcast i8* %73 to i8**
  %75 = add i32 %68, 8
  store i32 %75, i32* %67
  br label %81

; <label>:76                                      ; preds = %29
  %77 = getelementptr inbounds %struct.__va_list_tag* %66, i32 0, i32 2
  %78 = load i8** %77
  %79 = bitcast i8* %78 to i8**
  %80 = getelementptr i8* %78, i32 8
  store i8* %80, i8** %77
  br label %81

; <label>:81                                      ; preds = %76, %70
  %82 = phi i8** [ %74, %70 ], [ %79, %76 ]
  %83 = load i8** %82
  store i8* %83, i8** %arg, align 8
  %84 = load i32* %length, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %101

; <label>:86                                      ; preds = %81
  %87 = load i32* %length, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.argspec_struct* %24, i64 %89
  %91 = bitcast %struct.argspec_struct* %90 to i8*
  %92 = getelementptr i8* %91, i32 48
  %93 = bitcast i8* %92 to i32*
  %94 = load i32* %93, align 8
  %95 = and i32 %94, 1
  %96 = shl i32 %95, 31
  %97 = ashr i32 %96, 31
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

; <label>:99                                      ; preds = %86
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([14 x i8]* @.str45, i32 0, i32 0))
  %100 = load i8** %arg, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %5, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([42 x i8]* @.str127, i32 0, i32 0), i8* %100)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %5)
  store i32 1, i32* %7
  br label %271

; <label>:101                                     ; preds = %86, %81
  br label %102

; <label>:102                                     ; preds = %201, %101
  %103 = load i32* %i, align 4
  %104 = load i32* %2, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %204

; <label>:106                                     ; preds = %102
  %107 = load i8** %arg, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([9 x i8]* @.str128, i32 0, i32 0))
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %124

; <label>:110                                     ; preds = %106
  %111 = load i32* %length, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.argspec_struct* %24, i64 %112
  %114 = getelementptr inbounds %struct.argspec_struct* %113, i32 0, i32 2
  %115 = load %struct.__va_list_tag** %3, align 8
  %116 = getelementptr inbounds %struct.__va_list_tag* %115, i32 0, i32 2
  %117 = load i8** %116
  %118 = bitcast i8* %117 to %struct.obj_struct*
  %119 = getelementptr i8* %117, i32 32
  store i8* %119, i8** %116
  %120 = bitcast %struct.obj_struct* %114 to i8*
  %121 = bitcast %struct.obj_struct* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 32, i32 8, i1 false)
  %122 = load i32* %i, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %i, align 4
  br label %176

; <label>:124                                     ; preds = %106
  %125 = load i8** %arg, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([7 x i8]* @.str129, i32 0, i32 0))
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %138

; <label>:128                                     ; preds = %124
  %129 = load i32* %length, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.argspec_struct* %24, i64 %130
  %132 = bitcast %struct.argspec_struct* %131 to i8*
  %133 = getelementptr i8* %132, i32 8
  %134 = bitcast i8* %133 to i32*
  %135 = load i32* %134, align 8
  %136 = and i32 %135, -2
  %137 = or i32 %136, 1
  store i32 %137, i32* %134, align 8
  br label %175

; <label>:138                                     ; preds = %124
  %139 = load i8** %arg, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([10 x i8]* @.str130, i32 0, i32 0))
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %152

; <label>:142                                     ; preds = %138
  store i32 1, i32* %optionalp, align 4
  %143 = load i32* %length, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.argspec_struct* %24, i64 %144
  %146 = bitcast %struct.argspec_struct* %145 to i8*
  %147 = getelementptr i8* %146, i32 8
  %148 = bitcast i8* %147 to i32*
  %149 = load i32* %148, align 8
  %150 = and i32 %149, -3
  %151 = or i32 %150, 2
  store i32 %151, i32* %148, align 8
  br label %174

; <label>:152                                     ; preds = %138
  %153 = load i8** %arg, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([6 x i8]* @.str131, i32 0, i32 0))
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %166

; <label>:156                                     ; preds = %152
  %157 = load i32* %length, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.argspec_struct* %24, i64 %158
  %160 = bitcast %struct.argspec_struct* %159 to i8*
  %161 = getelementptr i8* %160, i32 48
  %162 = bitcast i8* %161 to i32*
  %163 = load i32* %162, align 8
  %164 = and i32 %163, -2
  %165 = or i32 %164, 1
  store i32 %165, i32* %162, align 8
  br label %173

; <label>:166                                     ; preds = %152
  %167 = load i8** %arg, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([9 x i8]* @.str132, i32 0, i32 0))
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %166
  br label %172

; <label>:171                                     ; preds = %166
  br label %204

; <label>:172                                     ; preds = %170
  br label %173

; <label>:173                                     ; preds = %172, %156
  br label %174

; <label>:174                                     ; preds = %173, %142
  br label %175

; <label>:175                                     ; preds = %174, %128
  br label %176

; <label>:176                                     ; preds = %175, %110
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load %struct.__va_list_tag** %3, align 8
  %179 = getelementptr inbounds %struct.__va_list_tag* %178, i32 0, i32 0
  %180 = load i32* %179
  %181 = icmp ule i32 %180, 40
  br i1 %181, label %182, label %188

; <label>:182                                     ; preds = %177
  %183 = getelementptr inbounds %struct.__va_list_tag* %178, i32 0, i32 3
  %184 = load i8** %183
  %185 = getelementptr i8* %184, i32 %180
  %186 = bitcast i8* %185 to i8**
  %187 = add i32 %180, 8
  store i32 %187, i32* %179
  br label %193

; <label>:188                                     ; preds = %177
  %189 = getelementptr inbounds %struct.__va_list_tag* %178, i32 0, i32 2
  %190 = load i8** %189
  %191 = bitcast i8* %190 to i8**
  %192 = getelementptr i8* %190, i32 8
  store i8* %192, i8** %189
  br label %193

; <label>:193                                     ; preds = %188, %182
  %194 = phi i8** [ %186, %182 ], [ %191, %188 ]
  %195 = load i8** %194
  store i8* %195, i8** %arg, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %201

; <label>:197                                     ; preds = %193
  %198 = load i32* %i, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %i, align 4
  %200 = icmp ne i32 %199, 0
  br label %201

; <label>:201                                     ; preds = %197, %193
  %202 = phi i1 [ false, %193 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  br label %102

; <label>:204                                     ; preds = %171, %102
  %205 = load i8** %arg, align 8
  %206 = load i32* %length, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.argspec_struct* %24, i64 %207
  %209 = getelementptr inbounds %struct.argspec_struct* %208, i32 0, i32 0
  store i8* %205, i8** %209, align 8
  br label %210

; <label>:210                                     ; preds = %204
  %211 = load i32* %i, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %i, align 4
  %213 = load i32* %length, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %length, align 4
  br label %25

; <label>:215                                     ; preds = %25
  %216 = load i32* %length, align 4
  %217 = and i32 %216, 65535
  %218 = shl i32 %217, 16
  %219 = ashr i32 %218, 16
  %220 = bitcast %struct.smpFunction_struct* %smp_fun to i8*
  %221 = getelementptr i8* %220, i32 24
  %222 = bitcast i8* %221 to i32*
  %223 = and i32 %217, 65535
  %224 = load i32* %222, align 8
  %225 = and i32 %224, -65536
  %226 = or i32 %225, %223
  store i32 %226, i32* %222, align 8
  %227 = load i32* %length, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 56, %228
  %230 = call i8* @smp_malloc(i64 %229)
  %231 = bitcast i8* %230 to %struct.argspec_struct*
  %232 = getelementptr inbounds %struct.smpFunction_struct* %smp_fun, i32 0, i32 2
  store %struct.argspec_struct* %231, %struct.argspec_struct** %232, align 8
  %233 = getelementptr inbounds %struct.smpFunction_struct* %smp_fun, i32 0, i32 2
  %234 = load %struct.argspec_struct** %233, align 8
  %235 = bitcast %struct.argspec_struct* %234 to i8*
  %236 = call i64 @llvm.objectsize.i64(i8* %235, i1 false)
  %237 = icmp ne i64 %236, -1
  br i1 %237, label %238, label %251

; <label>:238                                     ; preds = %215
  %239 = getelementptr inbounds %struct.smpFunction_struct* %smp_fun, i32 0, i32 2
  %240 = load %struct.argspec_struct** %239, align 8
  %241 = bitcast %struct.argspec_struct* %240 to i8*
  %242 = bitcast %struct.argspec_struct* %24 to i8*
  %243 = load i32* %length, align 4
  %244 = sext i32 %243 to i64
  %245 = mul i64 56, %244
  %246 = getelementptr inbounds %struct.smpFunction_struct* %smp_fun, i32 0, i32 2
  %247 = load %struct.argspec_struct** %246, align 8
  %248 = bitcast %struct.argspec_struct* %247 to i8*
  %249 = call i64 @llvm.objectsize.i64(i8* %248, i1 false)
  %250 = call i8* @__memcpy_chk(i8* %241, i8* %242, i64 %245, i64 %249)
  br label %260

; <label>:251                                     ; preds = %215
  %252 = getelementptr inbounds %struct.smpFunction_struct* %smp_fun, i32 0, i32 2
  %253 = load %struct.argspec_struct** %252, align 8
  %254 = bitcast %struct.argspec_struct* %253 to i8*
  %255 = bitcast %struct.argspec_struct* %24 to i8*
  %256 = load i32* %length, align 4
  %257 = sext i32 %256 to i64
  %258 = mul i64 56, %257
  %259 = call i8* @__inline_memcpy_chk(i8* %254, i8* %255, i64 %258)
  br label %260

; <label>:260                                     ; preds = %251, %238
  %261 = phi i8* [ %250, %238 ], [ %259, %251 ]
  %262 = call i8* @smp_malloc(i64 40)
  %263 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %262, i8** %263, align 8
  %264 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %265 = load i8** %264, align 8
  %266 = bitcast i8* %265 to %struct.smpFunction_struct*
  %267 = bitcast %struct.smpFunction_struct* %266 to i8*
  %268 = bitcast %struct.smpFunction_struct* %smp_fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %268, i64 40, i32 8, i1 false)
  %269 = bitcast %struct.obj_struct* %agg.result to i8*
  %270 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %269, i8* %270, i64 32, i32 8, i1 false)
  store i32 1, i32* %7
  br label %271

; <label>:271                                     ; preds = %260, %99
  %272 = load i8** %4
  call void @llvm.stackrestore(i8* %272)
  br label %273

; <label>:273                                     ; preds = %271, %16
  ret void
}

define i32 @smpGlobal_create_class() nounwind {
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
  %38 = load %struct.__sFILE** @__stdinp, align 8
  store %struct.__sFILE* %38, %struct.__sFILE** @smp_stdin, align 8
  %39 = load %struct.__sFILE** @__stdoutp, align 8
  store %struct.__sFILE* %39, %struct.__sFILE** @smp_stdout, align 8
  %40 = load %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %40, %struct.__sFILE** @smp_stderr, align 8
  %41 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([7 x i8]* @.str98, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 96)
  call void @smp_getclass(%struct.obj_struct* sret @smp_global, i8* getelementptr inbounds ([7 x i8]* @.str98, i32 0, i32 0))
  %42 = load i8** getelementptr inbounds (%struct.obj_struct* @smp_global, i32 0, i32 3), align 8
  %43 = bitcast i8* %42 to %struct.smpType_struct*
  %44 = bitcast %struct.smpType_struct* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_global to i8*), i8* %44, i64 64, i32 8, i1 false)
  %45 = bitcast %struct.obj_struct* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %46 = call i32 @scope_add(i8* getelementptr inbounds ([5 x i8]* @.str32, i32 0, i32 0), %struct.obj_struct* byval %1)
  %47 = bitcast %struct.obj_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %3, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpBool_not, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %4, %struct.obj_struct* byval %2, i32 1, i8* getelementptr inbounds ([2 x i8]* @.str135, i32 0, i32 0), %struct.obj_struct* byval %3)
  %48 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %6, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_not, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %7, %struct.obj_struct* byval %5, i32 1, i8* getelementptr inbounds ([2 x i8]* @.str136, i32 0, i32 0), %struct.obj_struct* byval %6)
  %49 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %9, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpGlobal_array, i32 3, i8* getelementptr inbounds ([6 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %10, %struct.obj_struct* byval %8, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str84, i32 0, i32 0), %struct.obj_struct* byval %9)
  %50 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %12, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpGlobal_catch_arg, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %13, %struct.obj_struct* byval %11, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str137, i32 0, i32 0), %struct.obj_struct* byval %12)
  %51 = bitcast %struct.obj_struct* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %15, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpGlobal_list, i32 3, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %16, %struct.obj_struct* byval %14, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str138, i32 0, i32 0), %struct.obj_struct* byval %15)
  %52 = bitcast %struct.obj_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %18, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpGlobal_print_arg, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %19, %struct.obj_struct* byval %17, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str139, i32 0, i32 0), %struct.obj_struct* byval %18)
  %53 = bitcast %struct.obj_struct* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %21, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smp_printf_arg, i32 4, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %22, %struct.obj_struct* byval %20, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str140, i32 0, i32 0), %struct.obj_struct* byval %21)
  %54 = bitcast %struct.obj_struct* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %24, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpGlobal_println_arg, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %25, %struct.obj_struct* byval %23, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str141, i32 0, i32 0), %struct.obj_struct* byval %24)
  %55 = bitcast %struct.obj_struct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %27, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpGlobal_sprintf_arg, i32 4, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %28, %struct.obj_struct* byval %26, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str142, i32 0, i32 0), %struct.obj_struct* byval %27)
  %56 = bitcast %struct.obj_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %30, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpGlobal_throw_arg, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %31, %struct.obj_struct* byval %29, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str143, i32 0, i32 0), %struct.obj_struct* byval %30)
  %57 = bitcast %struct.obj_struct* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %58 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpType_defvar(%struct.obj_struct* sret %34, %struct.obj_struct* byval %32, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str144, i32 0, i32 0), %struct.obj_struct* byval %33)
  %59 = bitcast %struct.obj_struct* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %60 = bitcast %struct.obj_struct* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpType_defvar(%struct.obj_struct* sret %37, %struct.obj_struct* byval %35, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str105, i32 0, i32 0), %struct.obj_struct* byval %36)
  ret i32 0
}

define void @smpInteger_not(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smpType_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %5]*
  store [1 x %5]* %15, [1 x %5]** %z, align 8
  %16 = load [1 x %5]** %z, align 8
  %17 = getelementptr inbounds [1 x %5]* %16, i32 0, i32 0
  call void @__gmpz_init(%5* %17)
  %18 = load [1 x %5]** %z, align 8
  %19 = getelementptr inbounds [1 x %5]* %18, i32 0, i32 0
  %20 = load %struct.obj_struct** %2, align 8
  %21 = getelementptr inbounds %struct.obj_struct* %20, i64 0
  %22 = getelementptr inbounds %struct.obj_struct* %21, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to [1 x %5]*
  %25 = getelementptr inbounds [1 x %5]* %24, i32 0, i32 0
  call void @__gmpz_com(%5* %19, %5* %25)
  %26 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %26)
  br label %32

; <label>:27                                      ; preds = %0
  %28 = load %struct.obj_struct** %2, align 8
  %29 = getelementptr inbounds %struct.obj_struct* %28, i64 0
  %30 = bitcast %struct.obj_struct* %4 to i8*
  %31 = bitcast %struct.obj_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_int, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %32

; <label>:32                                      ; preds = %27, %13
  ret void
}

define void @smpGlobal_array(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  %arr = alloca %struct.obj_struct*, align 8
  %ptr = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = call i64 @smpList_length_clong(%struct.obj_struct* byval %3)
  store i64 %8, i64* %length, align 8
  %9 = load i64* %length, align 8
  %10 = call i64 @next_power_of_2(i64 %9)
  %11 = mul i64 32, %10
  %12 = call i8* @smp_malloc(i64 %11)
  %13 = bitcast i8* %12 to %struct.obj_struct*
  store %struct.obj_struct* %13, %struct.obj_struct** %arr, align 8
  %14 = load %struct.obj_struct** %arr, align 8
  %15 = bitcast %struct.obj_struct* %14 to i8*
  %16 = call i64 @llvm.objectsize.i64(i8* %15, i1 false)
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %0
  %19 = load %struct.obj_struct** %arr, align 8
  %20 = bitcast %struct.obj_struct* %19 to i8*
  %21 = load i64* %length, align 8
  %22 = call i64 @next_power_of_2(i64 %21)
  %23 = mul i64 32, %22
  %24 = load %struct.obj_struct** %arr, align 8
  %25 = bitcast %struct.obj_struct* %24 to i8*
  %26 = call i64 @llvm.objectsize.i64(i8* %25, i1 false)
  %27 = call i8* @__memset_chk(i8* %20, i32 0, i64 %23, i64 %26)
  br label %35

; <label>:28                                      ; preds = %0
  %29 = load %struct.obj_struct** %arr, align 8
  %30 = bitcast %struct.obj_struct* %29 to i8*
  %31 = load i64* %length, align 8
  %32 = call i64 @next_power_of_2(i64 %31)
  %33 = mul i64 32, %32
  %34 = call i8* @__inline_memset_chk(i8* %30, i32 0, i64 %33)
  br label %35

; <label>:35                                      ; preds = %28, %18
  %36 = phi i8* [ %27, %18 ], [ %34, %28 ]
  %37 = load %struct.obj_struct** %2, align 8
  %38 = getelementptr inbounds %struct.obj_struct* %37, i64 0
  %39 = bitcast %struct.obj_struct* %ptr to i8*
  %40 = bitcast %struct.obj_struct* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  store i64 0, i64* %i, align 8
  br label %41

; <label>:41                                      ; preds = %72, %35
  %42 = load i64* %i, align 8
  %43 = load i64* %length, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %75

; <label>:45                                      ; preds = %41
  %46 = load i64* %i, align 8
  %47 = load %struct.obj_struct** %arr, align 8
  %48 = getelementptr inbounds %struct.obj_struct* %47, i64 %46
  %49 = getelementptr inbounds %struct.obj_struct* %ptr, i32 0, i32 3
  %50 = load i8** %49, align 8
  %51 = bitcast i8* %50 to %struct.smpPair_struct*
  %52 = getelementptr inbounds %struct.smpPair_struct* %51, i32 0, i32 0
  %53 = bitcast %struct.obj_struct* %48 to i8*
  %54 = bitcast %struct.obj_struct* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 32, i32 8, i1 false)
  %55 = getelementptr inbounds %struct.obj_struct* %ptr, i32 0, i32 3
  %56 = load i8** %55, align 8
  %57 = bitcast i8* %56 to %struct.smpPair_struct*
  %58 = getelementptr inbounds %struct.smpPair_struct* %57, i32 0, i32 1
  %59 = load %struct.obj_struct** %58, align 8
  %60 = icmp ne %struct.obj_struct* %59, null
  br i1 %60, label %61, label %69

; <label>:61                                      ; preds = %45
  %62 = getelementptr inbounds %struct.obj_struct* %ptr, i32 0, i32 3
  %63 = load i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.smpPair_struct*
  %65 = getelementptr inbounds %struct.smpPair_struct* %64, i32 0, i32 1
  %66 = load %struct.obj_struct** %65, align 8
  %67 = bitcast %struct.obj_struct* %ptr to i8*
  %68 = bitcast %struct.obj_struct* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 32, i32 8, i1 false)
  br label %71

; <label>:69                                      ; preds = %45
  %70 = bitcast %struct.obj_struct* %ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %71

; <label>:71                                      ; preds = %69, %61
  br label %72

; <label>:72                                      ; preds = %71
  %73 = load i64* %i, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %i, align 8
  br label %41

; <label>:75                                      ; preds = %41
  %76 = load %struct.obj_struct** %arr, align 8
  %77 = load i64* %length, align 8
  call void @smpArray_init_array(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %76, i64 %77)
  ret void
}

define void @smpGlobal_catch_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0))
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([25 x i8]* @.str145, i32 0, i32 0))
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define void @smpGlobal_list(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = load %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %3, i64 0
  %5 = bitcast %struct.obj_struct* %agg.result to i8*
  %6 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  ret void
}

define void @smpGlobal_print_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @smp_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define void @smp_printf_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load i32* %1, align 4
  %8 = load %struct.obj_struct** %2, align 8
  call void @smpGlobal_sprintf_arg(%struct.obj_struct* sret %res, %struct.obj_struct* byval %3, i32 %7, %struct.obj_struct* %8)
  %9 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %10 = load %struct.smpType_struct** %9, align 8
  %11 = getelementptr inbounds %struct.smpType_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %0
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %21

; <label>:18                                      ; preds = %0
  %19 = bitcast %struct.obj_struct* %4 to i8*
  %20 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smp_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %21

; <label>:21                                      ; preds = %18, %15
  ret void
}

define void @smpGlobal_println_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @smp_println(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define void @smpGlobal_sprintf_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %listtype = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %format = alloca i8*, align 8
  %list = alloca %struct.obj_struct, align 8
  %str_len = alloca i64, align 8
  %str = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %arglen = alloca i64, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  %11 = alloca %struct.obj_struct, align 8
  %fmt_end = alloca i8*, align 8
  %fmt_res = alloca %struct.obj_struct, align 8
  %12 = alloca %struct.obj_struct, align 8
  %13 = alloca %struct.obj_struct, align 8
  %14 = alloca %struct.obj_struct, align 8
  %15 = alloca %struct.obj_struct, align 8
  %16 = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 2
  %20 = load %struct.smpType_struct** %19, align 8
  %21 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %20, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

; <label>:23                                      ; preds = %0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 2
  %27 = load %struct.smpType_struct** %26, align 8
  %28 = getelementptr inbounds %struct.smpType_struct* %27, i32 0, i32 0
  %29 = load i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %23
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = bitcast %struct.obj_struct* %agg.result to i8*
  %36 = bitcast %struct.obj_struct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  br label %235

; <label>:37                                      ; preds = %23
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %38 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %39 = load i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.smpType_struct*
  %41 = load %struct.obj_struct** %2, align 8
  %42 = getelementptr inbounds %struct.obj_struct* %41, i64 0
  %43 = bitcast %struct.obj_struct* %5 to i8*
  %44 = bitcast %struct.obj_struct* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %40, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %235

; <label>:45                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %listtype, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0))
  %46 = load %struct.obj_struct** %2, align 8
  %47 = getelementptr inbounds %struct.obj_struct* %46, i64 0
  %48 = bitcast %struct.obj_struct* %6 to i8*
  %49 = bitcast %struct.obj_struct* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 32, i32 8, i1 false)
  %50 = call i32 @smpObject_instancep_cint(%struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %listtype)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

; <label>:52                                      ; preds = %45
  %53 = getelementptr inbounds %struct.obj_struct* %listtype, i32 0, i32 3
  %54 = load i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.smpType_struct*
  %56 = load %struct.obj_struct** %2, align 8
  %57 = getelementptr inbounds %struct.obj_struct* %56, i64 0
  %58 = bitcast %struct.obj_struct* %8 to i8*
  %59 = bitcast %struct.obj_struct* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %7, %struct.smpType_struct* %55, %struct.obj_struct* byval %8)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %7)
  br label %235

; <label>:60                                      ; preds = %45
  %61 = load %struct.obj_struct** %2, align 8
  %62 = getelementptr inbounds %struct.obj_struct* %61, i64 0
  %63 = getelementptr inbounds %struct.obj_struct* %62, i32 0, i32 3
  %64 = load i8** %63, align 8
  %65 = bitcast i8* %64 to %struct.smpstrstruct*
  %66 = getelementptr inbounds %struct.smpstrstruct* %65, i32 0, i32 0
  %67 = load i8** %66, align 8
  store i8* %67, i8** %format, align 8
  %68 = load %struct.obj_struct** %2, align 8
  %69 = getelementptr inbounds %struct.obj_struct* %68, i64 1
  %70 = bitcast %struct.obj_struct* %list to i8*
  %71 = bitcast %struct.obj_struct* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 32, i32 8, i1 false)
  store i64 16, i64* %str_len, align 8
  %72 = load i64* %str_len, align 8
  %73 = add i64 %72, 1
  %74 = mul i64 1, %73
  %75 = call i8* @smp_malloc(i64 %74)
  store i8* %75, i8** %str, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %j, align 8
  %76 = load i8** %format, align 8
  store i8* %76, i8** %ptr, align 8
  %77 = bitcast %struct.obj_struct* %9 to i8*
  %78 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 32, i32 8, i1 false)
  %79 = call i64 @smpList_length_clong(%struct.obj_struct* byval %9)
  store i64 %79, i64* %arglen, align 8
  br label %80

; <label>:80                                      ; preds = %224, %100, %60
  %81 = load i8** %ptr, align 8
  %82 = load i8* %81
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %227

; <label>:84                                      ; preds = %80
  %85 = load i8** %ptr, align 8
  %86 = load i8* %85
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 37
  br i1 %88, label %89, label %108

; <label>:89                                      ; preds = %84
  %90 = load i64* %i, align 8
  %91 = load i64* %str_len, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %100

; <label>:93                                      ; preds = %89
  %94 = load i8** %str, align 8
  %95 = load i64* %str_len, align 8
  %96 = mul i64 %95, 2
  store i64 %96, i64* %str_len, align 8
  %97 = add i64 %96, 1
  %98 = mul i64 1, %97
  %99 = call i8* @smp_realloc(i8* %94, i64 %98)
  store i8* %99, i8** %str, align 8
  br label %100

; <label>:100                                     ; preds = %93, %89
  %101 = load i8** %ptr, align 8
  %102 = getelementptr inbounds i8* %101, i32 1
  store i8* %102, i8** %ptr, align 8
  %103 = load i8* %101
  %104 = load i64* %i, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %i, align 8
  %106 = load i8** %str, align 8
  %107 = getelementptr inbounds i8* %106, i64 %104
  store i8 %103, i8* %107
  br label %80

; <label>:108                                     ; preds = %84
  %109 = load i64* %j, align 8
  %110 = load i64* %arglen, align 8
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %138

; <label>:112                                     ; preds = %108
  %113 = load i64* %j, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %j, align 8
  br label %115

; <label>:115                                     ; preds = %134, %112
  %116 = load i8** %ptr, align 8
  %117 = getelementptr inbounds i8* %116, i32 1
  store i8* %117, i8** %ptr, align 8
  %118 = load i8* %116
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %135

; <label>:120                                     ; preds = %115
  %121 = load i8** %ptr, align 8
  %122 = load i8* %121
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 37
  br i1 %124, label %125, label %134

; <label>:125                                     ; preds = %120
  %126 = load i8** %ptr, align 8
  %127 = getelementptr inbounds i8* %126, i64 1
  %128 = load i8* %127
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 37
  br i1 %130, label %131, label %134

; <label>:131                                     ; preds = %125
  %132 = load i64* %j, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %j, align 8
  br label %134

; <label>:134                                     ; preds = %131, %125, %120
  br label %115

; <label>:135                                     ; preds = %115
  call void @smp_getclass(%struct.obj_struct* sret %11, i8* getelementptr inbounds ([22 x i8]* @.str108, i32 0, i32 0))
  %136 = load i64* %j, align 8
  %137 = load i64* %arglen, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %10, %struct.obj_struct* byval %11, i8* getelementptr inbounds ([67 x i8]* @.str148, i32 0, i32 0), i64 %136, i64 %137)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %10)
  br label %235

; <label>:138                                     ; preds = %108
  %139 = load i8** %ptr, align 8
  store i8* %139, i8** %fmt_end, align 8
  %140 = getelementptr inbounds %struct.obj_struct* %list, i32 0, i32 3
  %141 = load i8** %140, align 8
  %142 = bitcast i8* %141 to %struct.smpPair_struct*
  %143 = getelementptr inbounds %struct.smpPair_struct* %142, i32 0, i32 0
  %144 = bitcast %struct.obj_struct* %12 to i8*
  %145 = bitcast %struct.obj_struct* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 32, i32 8, i1 false)
  %146 = load i8** %ptr, align 8
  call void @obj_put_fmt(%struct.obj_struct* sret %fmt_res, %struct.obj_struct* byval %12, i8* %146, i8** %fmt_end)
  %147 = getelementptr inbounds %struct.obj_struct* %fmt_res, i32 0, i32 2
  %148 = load %struct.smpType_struct** %147, align 8
  %149 = getelementptr inbounds %struct.smpType_struct* %148, i32 0, i32 0
  %150 = load i8** %149, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

; <label>:153                                     ; preds = %138
  %154 = bitcast %struct.obj_struct* %agg.result to i8*
  %155 = bitcast %struct.obj_struct* %fmt_res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 32, i32 8, i1 false)
  br label %235

; <label>:156                                     ; preds = %138
  %157 = getelementptr inbounds %struct.obj_struct* %fmt_res, i32 0, i32 2
  %158 = load %struct.smpType_struct** %157, align 8
  %159 = getelementptr inbounds %struct.smpType_struct* %158, i32 0, i32 0
  %160 = load i8** %159, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

; <label>:165                                     ; preds = %156
  call void @smp_getclass(%struct.obj_struct* sret %14, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %166 = getelementptr inbounds %struct.obj_struct* %14, i32 0, i32 3
  %167 = load i8** %166, align 8
  %168 = bitcast i8* %167 to %struct.smpType_struct*
  %169 = bitcast %struct.obj_struct* %15 to i8*
  %170 = bitcast %struct.obj_struct* %fmt_res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %13, %struct.smpType_struct* %168, %struct.obj_struct* byval %15)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %13)
  br label %235

; <label>:171                                     ; preds = %156
  br label %172

; <label>:172                                     ; preds = %171
  br label %173

; <label>:173                                     ; preds = %183, %172
  %174 = getelementptr inbounds %struct.obj_struct* %fmt_res, i32 0, i32 3
  %175 = load i8** %174, align 8
  %176 = bitcast i8* %175 to %struct.smpstrstruct*
  %177 = getelementptr inbounds %struct.smpstrstruct* %176, i32 0, i32 1
  %178 = load i64* %177, align 8
  %179 = load i64* %str_len, align 8
  %180 = load i64* %i, align 8
  %181 = sub i64 %179, %180
  %182 = icmp ugt i64 %178, %181
  br i1 %182, label %183, label %189

; <label>:183                                     ; preds = %173
  %184 = load i8** %str, align 8
  %185 = load i64* %str_len, align 8
  %186 = mul i64 %185, 2
  store i64 %186, i64* %str_len, align 8
  %187 = mul i64 1, %186
  %188 = call i8* @smp_realloc(i8* %184, i64 %187)
  store i8* %188, i8** %str, align 8
  br label %173

; <label>:189                                     ; preds = %173
  %190 = load i8** %str, align 8
  %191 = load i64* %i, align 8
  %192 = getelementptr inbounds i8* %190, i64 %191
  %193 = load i8** %str, align 8
  %194 = load i64* %i, align 8
  %195 = getelementptr inbounds i8* %193, i64 %194
  %196 = call i64 @llvm.objectsize.i64(i8* %195, i1 false)
  %197 = bitcast %struct.obj_struct* %16 to i8*
  %198 = bitcast %struct.obj_struct* %fmt_res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 32, i32 8, i1 false)
  %199 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %16)
  %200 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %192, i32 0, i64 %196, i8* getelementptr inbounds ([3 x i8]* @.str147, i32 0, i32 0), i8* %199)
  %201 = load i8** %fmt_end, align 8
  store i8* %201, i8** %ptr, align 8
  %202 = load i8** %str, align 8
  %203 = load i64* %i, align 8
  %204 = getelementptr inbounds i8* %202, i64 %203
  %205 = call i64 @strlen(i8* %204)
  %206 = load i64* %i, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %i, align 8
  %208 = getelementptr inbounds %struct.obj_struct* %list, i32 0, i32 3
  %209 = load i8** %208, align 8
  %210 = bitcast i8* %209 to %struct.smpPair_struct*
  %211 = getelementptr inbounds %struct.smpPair_struct* %210, i32 0, i32 1
  %212 = load %struct.obj_struct** %211, align 8
  %213 = icmp ne %struct.obj_struct* %212, null
  br i1 %213, label %214, label %222

; <label>:214                                     ; preds = %189
  %215 = getelementptr inbounds %struct.obj_struct* %list, i32 0, i32 3
  %216 = load i8** %215, align 8
  %217 = bitcast i8* %216 to %struct.smpPair_struct*
  %218 = getelementptr inbounds %struct.smpPair_struct* %217, i32 0, i32 1
  %219 = load %struct.obj_struct** %218, align 8
  %220 = bitcast %struct.obj_struct* %list to i8*
  %221 = bitcast %struct.obj_struct* %219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 32, i32 8, i1 false)
  br label %224

; <label>:222                                     ; preds = %189
  %223 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %224

; <label>:224                                     ; preds = %222, %214
  %225 = load i64* %j, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %j, align 8
  br label %80

; <label>:227                                     ; preds = %80
  %228 = load i64* %i, align 8
  %229 = load i8** %str, align 8
  %230 = getelementptr inbounds i8* %229, i64 %228
  store i8 0, i8* %230
  %231 = load i8** %str, align 8
  call void @smpString_init(%struct.obj_struct* sret %res, i8* %231)
  %232 = load i8** %str, align 8
  call void @smp_free(i8* %232)
  %233 = bitcast %struct.obj_struct* %agg.result to i8*
  %234 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %233, i8* %234, i64 32, i32 8, i1 false)
  br label %235

; <label>:235                                     ; preds = %227, %165, %153, %135, %52, %37, %32
  ret void
}

define void @smpGlobal_throw_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define i64 @smpList_length_clong(%struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i64, align 8
  %length = alloca i64, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %2 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %3 = load %struct.smpType_struct** %2, align 8
  %4 = getelementptr inbounds %struct.smpType_struct* %3, i32 0, i32 1
  %5 = load i32* %4, align 4
  %6 = load i32* @smpType_id_nil, align 4
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
  %19 = bitcast i8* %18 to %struct.smpPair_struct*
  %20 = getelementptr inbounds %struct.smpPair_struct* %19, i32 0, i32 1
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

define void @smpGlobal_class_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %name = alloca %struct.obj_struct, align 8
  %parents = alloca %struct.obj_struct, align 8
  %body = alloca %struct.obj_struct, align 8
  %name_str = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = bitcast %struct.obj_struct* %name to i8*
  %11 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = load %struct.obj_struct** %2, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %12, i64 1
  %14 = bitcast %struct.obj_struct* %parents to i8*
  %15 = bitcast %struct.obj_struct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = load %struct.obj_struct** %2, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %16, i64 2
  %18 = bitcast %struct.obj_struct* %body to i8*
  %19 = bitcast %struct.obj_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = bitcast %struct.obj_struct* %3 to i8*
  %21 = bitcast %struct.obj_struct* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %3)
  store i8* %22, i8** %name_str, align 8
  %23 = bitcast %struct.obj_struct* %4 to i8*
  %24 = bitcast %struct.obj_struct* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = bitcast %struct.obj_struct* %5 to i8*
  %26 = bitcast %struct.obj_struct* %parents to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  %27 = bitcast %struct.obj_struct* %6 to i8*
  %28 = bitcast %struct.obj_struct* %body to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %7, i8* getelementptr inbounds ([36 x i8]* @.str146, i32 0, i32 0), %struct.obj_struct* byval %4, %struct.obj_struct* byval %5, %struct.obj_struct* byval %6)
  %29 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpGlobal_fprint(%struct.obj_struct* sret %agg.result, %struct.__sFILE* %fp, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca %struct.__sFILE*, align 8
  %strobj = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %1, align 8
  %4 = bitcast %struct.obj_struct* %2 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %strobj, %struct.obj_struct* byval %2, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %6 = getelementptr inbounds %struct.obj_struct* %strobj, i32 0, i32 2
  %7 = load %struct.smpType_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smpType_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  %16 = bitcast %struct.obj_struct* %strobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  br label %24

; <label>:17                                      ; preds = %0
  %18 = load %struct.__sFILE** %1, align 8
  %19 = bitcast %struct.obj_struct* %3 to i8*
  %20 = bitcast %struct.obj_struct* %strobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %3)
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([3 x i8]* @.str147, i32 0, i32 0), i8* %21)
  %23 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %24

; <label>:24                                      ; preds = %17, %14
  ret void
}

define void @smpGlobal_vsprintf(%struct.obj_struct* sret %agg.result, i8* %format, %struct.__va_list_tag* %ap) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.__va_list_tag*, align 8
  %argc = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %list = alloca %struct.obj_struct, align 8
  %list_ptr = alloca %struct.obj_struct, align 8
  %i = alloca i32, align 4
  %car = alloca %struct.obj_struct, align 8
  %cons = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %argv = alloca [2 x %struct.obj_struct], align 16
  %7 = alloca %struct.obj_struct, align 8
  store i8* %format, i8** %1, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %2, align 8
  store i32 0, i32* %argc, align 4
  %8 = load i8** %1, align 8
  store i8* %8, i8** %ptr, align 8
  br label %9

; <label>:9                                       ; preds = %30, %0
  %10 = load i8** %ptr, align 8
  %11 = load i8* %10
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %33

; <label>:13                                      ; preds = %9
  %14 = load i8** %ptr, align 8
  %15 = load i8* %14
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %30

; <label>:18                                      ; preds = %13
  %19 = load i8** %ptr, align 8
  %20 = getelementptr inbounds i8* %19, i32 1
  store i8* %20, i8** %ptr, align 8
  %21 = load i8** %ptr, align 8
  %22 = getelementptr inbounds i8* %21, i64 1
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 37
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %18
  %27 = load i32* %argc, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %argc, align 4
  br label %29

; <label>:29                                      ; preds = %26, %18
  br label %30

; <label>:30                                      ; preds = %29, %13
  %31 = load i8** %ptr, align 8
  %32 = getelementptr inbounds i8* %31, i32 1
  store i8* %32, i8** %ptr, align 8
  br label %9

; <label>:33                                      ; preds = %9
  %34 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %35 = bitcast %struct.obj_struct* %list_ptr to i8*
  %36 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %37

; <label>:37                                      ; preds = %84, %33
  %38 = load i32* %i, align 4
  %39 = load i32* %argc, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %87

; <label>:41                                      ; preds = %37
  %42 = load %struct.__va_list_tag** %2, align 8
  %43 = getelementptr inbounds %struct.__va_list_tag* %42, i32 0, i32 2
  %44 = load i8** %43
  %45 = bitcast i8* %44 to %struct.obj_struct*
  %46 = getelementptr i8* %44, i32 32
  store i8* %46, i8** %43
  %47 = bitcast %struct.obj_struct* %car to i8*
  %48 = bitcast %struct.obj_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 32, i32 8, i1 false)
  %49 = bitcast %struct.obj_struct* %3 to i8*
  %50 = bitcast %struct.obj_struct* %car to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  %51 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpObject_cons_c(%struct.obj_struct* sret %cons, %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  %52 = getelementptr inbounds %struct.obj_struct* %list_ptr, i32 0, i32 2
  %53 = load %struct.smpType_struct** %52, align 8
  %54 = getelementptr inbounds %struct.smpType_struct* %53, i32 0, i32 1
  %55 = load i32* %54, align 4
  %56 = load i32* @smpType_id_nil, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %41
  %59 = bitcast %struct.obj_struct* %list to i8*
  %60 = bitcast %struct.obj_struct* %cons to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false)
  %61 = bitcast %struct.obj_struct* %list_ptr to i8*
  %62 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 32, i32 8, i1 false)
  br label %83

; <label>:63                                      ; preds = %41
  %64 = bitcast %struct.obj_struct* %5 to i8*
  %65 = bitcast %struct.obj_struct* %list_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 32, i32 8, i1 false)
  call void @smpPair_set_cdr_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %cons)
  %66 = getelementptr inbounds %struct.obj_struct* %list_ptr, i32 0, i32 3
  %67 = load i8** %66, align 8
  %68 = bitcast i8* %67 to %struct.smpPair_struct*
  %69 = getelementptr inbounds %struct.smpPair_struct* %68, i32 0, i32 1
  %70 = load %struct.obj_struct** %69, align 8
  %71 = icmp ne %struct.obj_struct* %70, null
  br i1 %71, label %72, label %80

; <label>:72                                      ; preds = %63
  %73 = getelementptr inbounds %struct.obj_struct* %list_ptr, i32 0, i32 3
  %74 = load i8** %73, align 8
  %75 = bitcast i8* %74 to %struct.smpPair_struct*
  %76 = getelementptr inbounds %struct.smpPair_struct* %75, i32 0, i32 1
  %77 = load %struct.obj_struct** %76, align 8
  %78 = bitcast %struct.obj_struct* %list_ptr to i8*
  %79 = bitcast %struct.obj_struct* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 32, i32 8, i1 false)
  br label %82

; <label>:80                                      ; preds = %63
  %81 = bitcast %struct.obj_struct* %list_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %82

; <label>:82                                      ; preds = %80, %72
  br label %83

; <label>:83                                      ; preds = %82, %58
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i32* %i, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %i, align 4
  br label %37

; <label>:87                                      ; preds = %37
  %88 = getelementptr inbounds [2 x %struct.obj_struct]* %argv, i32 0, i64 0
  %89 = load i8** %1, align 8
  call void @smpString_init(%struct.obj_struct* sret %88, i8* %89)
  %90 = getelementptr inbounds [2 x %struct.obj_struct]* %argv, i32 0, i64 1
  %91 = bitcast %struct.obj_struct* %90 to i8*
  %92 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 32, i32 8, i1 false)
  %93 = bitcast %struct.obj_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %94 = load i32* %argc, align 4
  %95 = getelementptr inbounds [2 x %struct.obj_struct]* %argv, i32 0, i32 0
  call void @smpGlobal_sprintf_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %7, i32 %94, %struct.obj_struct* %95)
  ret void
}

define void @smp_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj) nounwind {
  %strobj = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = bitcast %struct.obj_struct* %1 to i8*
  %4 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %strobj, %struct.obj_struct* byval %1, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %5 = getelementptr inbounds %struct.obj_struct* %strobj, i32 0, i32 2
  %6 = load %struct.smpType_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smpType_struct* %6, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %0
  %14 = bitcast %struct.obj_struct* %agg.result to i8*
  %15 = bitcast %struct.obj_struct* %strobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  br label %24

; <label>:16                                      ; preds = %0
  %17 = load %struct.__sFILE** @smp_stdout, align 8
  %18 = bitcast %struct.obj_struct* %2 to i8*
  %19 = bitcast %struct.obj_struct* %strobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %2)
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([3 x i8]* @.str147, i32 0, i32 0), i8* %20)
  %22 = bitcast %struct.obj_struct* %agg.result to i8*
  %23 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  br label %24

; <label>:24                                      ; preds = %16, %13
  ret void
}

define void @smpPair_set_cdr_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpPair_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpPair_struct*
  store %struct.smpPair_struct* %5, %struct.smpPair_struct** %core, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_nil, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %0
  %15 = load %struct.smpPair_struct** %core, align 8
  %16 = getelementptr inbounds %struct.smpPair_struct* %15, i32 0, i32 1
  store %struct.obj_struct* null, %struct.obj_struct** %16, align 8
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  %18 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  br label %39

; <label>:19                                      ; preds = %0
  %20 = load %struct.smpPair_struct** %core, align 8
  %21 = getelementptr inbounds %struct.smpPair_struct* %20, i32 0, i32 1
  %22 = load %struct.obj_struct** %21, align 8
  %23 = icmp eq %struct.obj_struct* %22, null
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %19
  %25 = call i8* @smp_malloc(i64 32)
  %26 = bitcast i8* %25 to %struct.obj_struct*
  %27 = load %struct.smpPair_struct** %core, align 8
  %28 = getelementptr inbounds %struct.smpPair_struct* %27, i32 0, i32 1
  store %struct.obj_struct* %26, %struct.obj_struct** %28, align 8
  br label %29

; <label>:29                                      ; preds = %24, %19
  %30 = load %struct.smpPair_struct** %core, align 8
  %31 = getelementptr inbounds %struct.smpPair_struct* %30, i32 0, i32 1
  %32 = load %struct.obj_struct** %31, align 8
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = bitcast %struct.obj_struct* %32 to i8*
  %36 = bitcast %struct.obj_struct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  %37 = bitcast %struct.obj_struct* %agg.result to i8*
  %38 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  br label %39

; <label>:39                                      ; preds = %29, %14
  ret void
}

define void @obj_put_fmt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %fmt, i8** %fmt_end) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %width = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %prec = alloca i32, align 4
  %type = alloca i8, align 1
  %argc = alloca i32, align 4
  %argv = alloca %struct.obj_struct*, align 8
  %prec_obj = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca i8*
  %type_str = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  store i8* %fmt, i8** %1, align 8
  store i8** %fmt_end, i8*** %2, align 8
  %11 = load i8** %1, align 8
  %12 = load i8* %11
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 37
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([22 x i8]* @.str108, i32 0, i32 0))
  %16 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([48 x i8]* @.str149, i32 0, i32 0), i8* %16)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %171

; <label>:17                                      ; preds = %0
  %18 = load i8** %1, align 8
  %19 = getelementptr inbounds i8* %18, i32 1
  store i8* %19, i8** %1, align 8
  store i32 0, i32* %width, align 4
  %20 = load i8** %1, align 8
  store i8* %20, i8** %ptr, align 8
  br label %21

; <label>:21                                      ; preds = %33, %17
  %22 = load i8** %ptr, align 8
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %21
  %27 = load i8** %ptr, align 8
  %28 = load i8* %27
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 57
  br label %31

; <label>:31                                      ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %42

; <label>:33                                      ; preds = %31
  %34 = load i32* %width, align 4
  %35 = mul nsw i32 10, %34
  %36 = load i8** %ptr, align 8
  %37 = getelementptr inbounds i8* %36, i32 1
  store i8* %37, i8** %ptr, align 8
  %38 = load i8* %36
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 %39, 48
  %41 = add nsw i32 %35, %40
  store i32 %41, i32* %width, align 4
  br label %21

; <label>:42                                      ; preds = %31
  store i32 0, i32* %prec, align 4
  %43 = load i8** %ptr, align 8
  %44 = load i8* %43
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %47, label %70

; <label>:47                                      ; preds = %42
  br label %48

; <label>:48                                      ; preds = %61, %47
  %49 = load i8** %ptr, align 8
  %50 = getelementptr inbounds i8* %49, i32 1
  store i8* %50, i8** %ptr, align 8
  %51 = load i8* %50
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %59

; <label>:54                                      ; preds = %48
  %55 = load i8** %ptr, align 8
  %56 = load i8* %55
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 57
  br label %59

; <label>:59                                      ; preds = %54, %48
  %60 = phi i1 [ false, %48 ], [ %58, %54 ]
  br i1 %60, label %61, label %69

; <label>:61                                      ; preds = %59
  %62 = load i32* %prec, align 4
  %63 = mul nsw i32 10, %62
  %64 = load i8** %ptr, align 8
  %65 = load i8* %64
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 48
  %68 = add nsw i32 %63, %67
  store i32 %68, i32* %prec, align 4
  br label %48

; <label>:69                                      ; preds = %59
  br label %70

; <label>:70                                      ; preds = %69, %42
  %71 = load i8** %ptr, align 8
  %72 = getelementptr inbounds i8* %71, i32 1
  store i8* %72, i8** %ptr, align 8
  %73 = load i8* %71
  store i8 %73, i8* %type, align 1
  store i32 0, i32* %argc, align 4
  store %struct.obj_struct* null, %struct.obj_struct** %argv, align 8
  %74 = bitcast %struct.obj_struct* %prec_obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %75 = load i32* %prec, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

; <label>:77                                      ; preds = %70
  %78 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %79 = load %struct.smpType_struct** %78, align 8
  %80 = getelementptr inbounds %struct.smpType_struct* %79, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([6 x i8]* @.str116, i32 0, i32 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

; <label>:84                                      ; preds = %77
  %85 = load i32* %prec, align 4
  %86 = sext i32 %85 to i64
  call void @smpInteger_init_clong(%struct.obj_struct* sret %prec_obj, i64 %86)
  store i32 1, i32* %argc, align 4
  store %struct.obj_struct* %prec_obj, %struct.obj_struct** %argv, align 8
  br label %87

; <label>:87                                      ; preds = %84, %77, %70
  %88 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %89 = load i8* %type, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 115
  br i1 %91, label %92, label %97

; <label>:92                                      ; preds = %87
  %93 = bitcast %struct.obj_struct* %5 to i8*
  %94 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 32, i32 8, i1 false)
  %95 = load i32* %argc, align 4
  %96 = load %struct.obj_struct** %argv, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %res, %struct.obj_struct* byval %5, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 %95, %struct.obj_struct* %96)
  br label %110

; <label>:97                                      ; preds = %87
  %98 = load i8* %type, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 119
  br i1 %100, label %101, label %106

; <label>:101                                     ; preds = %97
  %102 = bitcast %struct.obj_struct* %6 to i8*
  %103 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 32, i32 8, i1 false)
  %104 = load i32* %argc, align 4
  %105 = load %struct.obj_struct** %argv, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %res, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i32 %104, %struct.obj_struct* %105)
  br label %109

; <label>:106                                     ; preds = %97
  call void @smp_getclass(%struct.obj_struct* sret %8, i8* getelementptr inbounds ([22 x i8]* @.str108, i32 0, i32 0))
  %107 = load i8* %type, align 1
  %108 = sext i8 %107 to i32
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %7, %struct.obj_struct* byval %8, i8* getelementptr inbounds ([26 x i8]* @.str150, i32 0, i32 0), i32 %108)
  call void @smpGlobal_throw(%struct.obj_struct* sret %res, %struct.obj_struct* byval %7)
  br label %109

; <label>:109                                     ; preds = %106, %101
  br label %110

; <label>:110                                     ; preds = %109, %92
  %111 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %112 = load %struct.smpType_struct** %111, align 8
  %113 = getelementptr inbounds %struct.smpType_struct* %112, i32 0, i32 0
  %114 = load i8** %113, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

; <label>:117                                     ; preds = %110
  %118 = bitcast %struct.obj_struct* %agg.result to i8*
  %119 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 32, i32 8, i1 false)
  br label %171

; <label>:120                                     ; preds = %110
  %121 = load i8** %ptr, align 8
  %122 = load i8* %121
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 116
  br i1 %124, label %125, label %162

; <label>:125                                     ; preds = %120
  %126 = load i8** %ptr, align 8
  %127 = getelementptr inbounds i8* %126, i32 1
  store i8* %127, i8** %ptr, align 8
  %128 = call i8* @llvm.stacksave()
  store i8* %128, i8** %9
  %129 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %130 = load %struct.smpType_struct** %129, align 8
  %131 = getelementptr inbounds %struct.smpType_struct* %130, i32 0, i32 0
  %132 = load i8** %131, align 8
  %133 = call i64 @strlen(i8* %132)
  %134 = add i64 %133, 2
  %135 = mul i64 1, %134
  %136 = alloca i8, i64 %135, align 16
  %137 = getelementptr inbounds i8* %136, i64 0
  store i8 58, i8* %137
  %138 = getelementptr inbounds i8* %136, i64 1
  %139 = call i64 @llvm.objectsize.i64(i8* %138, i1 false)
  %140 = icmp ne i64 %139, -1
  br i1 %140, label %141, label %150

; <label>:141                                     ; preds = %125
  %142 = getelementptr inbounds i8* %136, i64 1
  %143 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %144 = load %struct.smpType_struct** %143, align 8
  %145 = getelementptr inbounds %struct.smpType_struct* %144, i32 0, i32 0
  %146 = load i8** %145, align 8
  %147 = getelementptr inbounds i8* %136, i64 1
  %148 = call i64 @llvm.objectsize.i64(i8* %147, i1 false)
  %149 = call i8* @__strcpy_chk(i8* %142, i8* %146, i64 %148)
  br label %157

; <label>:150                                     ; preds = %125
  %151 = getelementptr inbounds i8* %136, i64 1
  %152 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %153 = load %struct.smpType_struct** %152, align 8
  %154 = getelementptr inbounds %struct.smpType_struct* %153, i32 0, i32 0
  %155 = load i8** %154, align 8
  %156 = call i8* @__inline_strcpy_chk(i8* %151, i8* %155)
  br label %157

; <label>:157                                     ; preds = %150, %141
  %158 = phi i8* [ %149, %141 ], [ %156, %150 ]
  call void @smpString_init(%struct.obj_struct* sret %type_str, i8* %136)
  %159 = bitcast %struct.obj_struct* %10 to i8*
  %160 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 32, i32 8, i1 false)
  call void @smpString_add(%struct.obj_struct* sret %res, %struct.obj_struct* byval %10, i32 1, %struct.obj_struct* %type_str)
  %161 = load i8** %9
  call void @llvm.stackrestore(i8* %161)
  br label %162

; <label>:162                                     ; preds = %157, %120
  %163 = load i8*** %2, align 8
  %164 = icmp ne i8** %163, null
  br i1 %164, label %165, label %168

; <label>:165                                     ; preds = %162
  %166 = load i8** %ptr, align 8
  %167 = load i8*** %2, align 8
  store i8* %166, i8** %167
  br label %168

; <label>:168                                     ; preds = %165, %162
  %169 = bitcast %struct.obj_struct* %agg.result to i8*
  %170 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 32, i32 8, i1 false)
  br label %171

; <label>:171                                     ; preds = %168, %117, %15
  ret void
}

define void @smpString_add(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.smpType_struct, align 8
  %str1 = alloca %struct.smpstrstruct, align 8
  %str2 = alloca %struct.smpstrstruct, align 8
  %length = alloca i64, align 8
  %str = alloca i8*, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %11 = load %struct.smpType_struct** %10, align 8
  %12 = bitcast %struct.smpType_struct* %3 to i8*
  %13 = bitcast %struct.smpType_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 64, i32 8, i1 false)
  %14 = call i32 @smpObject_instancep_c(%struct.smpType_struct* %9, %struct.smpType_struct* byval %3)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %83

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %18 = load i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.smpstrstruct*
  %20 = bitcast %struct.smpstrstruct* %str1 to i8*
  %21 = bitcast %struct.smpstrstruct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  %22 = load %struct.obj_struct** %2, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i64 0
  %24 = getelementptr inbounds %struct.obj_struct* %23, i32 0, i32 3
  %25 = load i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.smpstrstruct*
  %27 = bitcast %struct.smpstrstruct* %str2 to i8*
  %28 = bitcast %struct.smpstrstruct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  %29 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %30 = load i64* %29, align 8
  %31 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 1
  %32 = load i64* %31, align 8
  %33 = add i64 %30, %32
  store i64 %33, i64* %length, align 8
  %34 = load i64* %length, align 8
  %35 = add i64 %34, 1
  %36 = call i8* @smp_malloc(i64 %35)
  store i8* %36, i8** %str, align 8
  %37 = load i8** %str, align 8
  %38 = call i64 @llvm.objectsize.i64(i8* %37, i1 false)
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %47

; <label>:40                                      ; preds = %16
  %41 = load i8** %str, align 8
  %42 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 0
  %43 = load i8** %42, align 8
  %44 = load i8** %str, align 8
  %45 = call i64 @llvm.objectsize.i64(i8* %44, i1 false)
  %46 = call i8* @__strcpy_chk(i8* %41, i8* %43, i64 %45)
  br label %52

; <label>:47                                      ; preds = %16
  %48 = load i8** %str, align 8
  %49 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 0
  %50 = load i8** %49, align 8
  %51 = call i8* @__inline_strcpy_chk(i8* %48, i8* %50)
  br label %52

; <label>:52                                      ; preds = %47, %40
  %53 = phi i8* [ %46, %40 ], [ %51, %47 ]
  %54 = load i8** %str, align 8
  %55 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %56 = load i64* %55, align 8
  %57 = getelementptr inbounds i8* %54, i64 %56
  %58 = call i64 @llvm.objectsize.i64(i8* %57, i1 false)
  %59 = icmp ne i64 %58, -1
  br i1 %59, label %60, label %73

; <label>:60                                      ; preds = %52
  %61 = load i8** %str, align 8
  %62 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %63 = load i64* %62, align 8
  %64 = getelementptr inbounds i8* %61, i64 %63
  %65 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 0
  %66 = load i8** %65, align 8
  %67 = load i8** %str, align 8
  %68 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %69 = load i64* %68, align 8
  %70 = getelementptr inbounds i8* %67, i64 %69
  %71 = call i64 @llvm.objectsize.i64(i8* %70, i1 false)
  %72 = call i8* @__strcpy_chk(i8* %64, i8* %66, i64 %71)
  br label %81

; <label>:73                                      ; preds = %52
  %74 = load i8** %str, align 8
  %75 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %76 = load i64* %75, align 8
  %77 = getelementptr inbounds i8* %74, i64 %76
  %78 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 0
  %79 = load i8** %78, align 8
  %80 = call i8* @__inline_strcpy_chk(i8* %77, i8* %79)
  br label %81

; <label>:81                                      ; preds = %73, %60
  %82 = phi i8* [ %72, %60 ], [ %80, %73 ]
  call void @smpString_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  br label %90

; <label>:83                                      ; preds = %0
  %84 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %85 = load %struct.smpType_struct** %84, align 8
  %86 = load %struct.obj_struct** %2, align 8
  %87 = getelementptr inbounds %struct.obj_struct* %86, i64 0
  %88 = bitcast %struct.obj_struct* %5 to i8*
  %89 = bitcast %struct.obj_struct* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %85, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %90

; <label>:90                                      ; preds = %83, %81
  ret void
}

define void @smpThrown_init(%struct.obj_struct* sret %agg.result, i32 %type, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %core = alloca %struct.smpThrown_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  store i32 %type, i32* %1, align 4
  %2 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %3 = load %struct.smpType_struct** %2, align 8
  %4 = getelementptr inbounds %struct.smpType_struct* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  %10 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  br label %42

; <label>:11                                      ; preds = %0
  %12 = load i32* %1, align 4
  %13 = and i32 %12, 15
  %14 = shl i32 %13, 28
  %15 = ashr i32 %14, 28
  %16 = bitcast %struct.smpThrown_struct* %core to i32*
  %17 = and i32 %13, 15
  %18 = load i32* %16, align 8
  %19 = and i32 %18, -16
  %20 = or i32 %19, %17
  store i32 %20, i32* %16, align 8
  %21 = getelementptr inbounds %struct.smpThrown_struct* %core, i32 0, i32 2
  store i64 1, i64* %21, align 8
  %22 = getelementptr inbounds %struct.smpThrown_struct* %core, i32 0, i32 2
  %23 = load i64* %22, align 8
  %24 = mul i64 32, %23
  %25 = call i8* @smp_malloc(i64 %24)
  %26 = bitcast i8* %25 to %struct.obj_struct*
  %27 = getelementptr inbounds %struct.smpThrown_struct* %core, i32 0, i32 1
  store %struct.obj_struct* %26, %struct.obj_struct** %27, align 8
  %28 = getelementptr inbounds %struct.smpThrown_struct* %core, i32 0, i32 1
  %29 = load %struct.obj_struct** %28, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %29, i64 0
  %31 = bitcast %struct.obj_struct* %30 to i8*
  %32 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_thrown)
  %33 = call i8* @smp_malloc(i64 24)
  %34 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.smpThrown_struct*
  %38 = bitcast %struct.smpThrown_struct* %37 to i8*
  %39 = bitcast %struct.smpThrown_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 24, i32 8, i1 false)
  %40 = bitcast %struct.obj_struct* %agg.result to i8*
  %41 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  br label %42

; <label>:42                                      ; preds = %11, %8
  ret void
}

define i32 @smpHash_create_class() nounwind {
  %hash = alloca %struct.obj_struct, align 8
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
  %16 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([5 x i8]* @.str151, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %hash, i8* getelementptr inbounds ([5 x i8]* @.str151, i32 0, i32 0))
  %17 = bitcast %struct.obj_struct* %1 to i8*
  %18 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpHash_add_now, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str94, i32 0, i32 0), %struct.obj_struct* byval %2)
  %19 = bitcast %struct.obj_struct* %4 to i8*
  %20 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpHash_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %5)
  %21 = bitcast %struct.obj_struct* %7 to i8*
  %22 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpHash_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %8)
  %23 = bitcast %struct.obj_struct* %10 to i8*
  %24 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpHash_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %11)
  %25 = bitcast %struct.obj_struct* %13 to i8*
  %26 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpHash_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %14)
  ret i32 0
}

define void @smpHash_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpHash_struct*
  %6 = call i32 @smpHash_core_clear(%struct.smpHash_struct* %5)
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpHash_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %hash = alloca %struct.smpHash_struct, align 8
  %i = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpHash_struct*
  %7 = bitcast %struct.smpHash_struct* %hash to i8*
  %8 = bitcast %struct.smpHash_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 64, i32 8, i1 false)
  store i64 0, i64* %i, align 8
  br label %9

; <label>:9                                       ; preds = %22, %0
  %10 = load i64* %i, align 8
  %11 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 2
  %12 = load i64* %11, align 8
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %25

; <label>:14                                      ; preds = %9
  %15 = load i64* %i, align 8
  %16 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %17 = load %struct.obj_struct** %16, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 %15
  %19 = bitcast %struct.obj_struct* %3 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  br label %22

; <label>:22                                      ; preds = %14
  %23 = load i64* %i, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %i, align 8
  br label %9

; <label>:25                                      ; preds = %9
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpHash_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpHash_make_string(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0))
  ret void
}

define void @smpHash_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpHash_make_string(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0))
  ret void
}

define i32 @smpHash_core_add_now(%struct.smpHash_struct* %hash, %struct.obj_struct* byval %pair) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smpHash_struct*, align 8
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %hash2 = alloca %struct.smpHash_struct, align 8
  store %struct.smpHash_struct* %hash, %struct.smpHash_struct** %2, align 8
  store i32 0, i32* %index, align 4
  %6 = bitcast %struct.obj_struct* %4 to i8*
  %7 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @smpList_car(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i32 0, %struct.obj_struct* null)
  %8 = call i32 @obj_hash(i32* %index, %struct.obj_struct* byval %3)
  store i32 %8, i32* %code, align 4
  %9 = load i32* %code, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i32* %code, align 4
  store i32 %12, i32* %1
  br label %99

; <label>:13                                      ; preds = %0
  %14 = load %struct.smpHash_struct** %2, align 8
  %15 = getelementptr inbounds %struct.smpHash_struct* %14, i32 0, i32 2
  %16 = load i64* %15, align 8
  %17 = load i32* %index, align 4
  %18 = sext i32 %17 to i64
  %19 = urem i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %index, align 4
  %21 = load i32* %index, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.smpHash_struct** %2, align 8
  %24 = getelementptr inbounds %struct.smpHash_struct* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %24, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 %22
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %43, label %30

; <label>:30                                      ; preds = %13
  %31 = load i32* %index, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.smpHash_struct** %2, align 8
  %34 = getelementptr inbounds %struct.smpHash_struct* %33, i32 0, i32 0
  %35 = load %struct.obj_struct** %34, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 %32
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_nil, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

; <label>:43                                      ; preds = %30, %13
  %44 = load %struct.smpHash_struct** %2, align 8
  %45 = getelementptr inbounds %struct.smpHash_struct* %44, i32 0, i32 3
  %46 = load i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i32* %index, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.smpHash_struct** %2, align 8
  %51 = getelementptr inbounds %struct.smpHash_struct* %50, i32 0, i32 0
  %52 = load %struct.obj_struct** %51, align 8
  %53 = getelementptr inbounds %struct.obj_struct* %52, i64 %49
  %54 = bitcast %struct.obj_struct* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %55

; <label>:55                                      ; preds = %43, %30
  %56 = load i32* %index, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.smpHash_struct** %2, align 8
  %59 = getelementptr inbounds %struct.smpHash_struct* %58, i32 0, i32 0
  %60 = load %struct.obj_struct** %59, align 8
  %61 = getelementptr inbounds %struct.obj_struct* %60, i64 %57
  %62 = bitcast %struct.obj_struct* %5 to i8*
  %63 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 32, i32 8, i1 false)
  %64 = load i32* %index, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.smpHash_struct** %2, align 8
  %67 = getelementptr inbounds %struct.smpHash_struct* %66, i32 0, i32 0
  %68 = load %struct.obj_struct** %67, align 8
  %69 = getelementptr inbounds %struct.obj_struct* %68, i64 %65
  call void @smpObject_cons(%struct.obj_struct* sret %61, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %69)
  %70 = load %struct.smpHash_struct** %2, align 8
  %71 = getelementptr inbounds %struct.smpHash_struct* %70, i32 0, i32 4
  %72 = load i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.smpHash_struct** %2, align 8
  %75 = getelementptr inbounds %struct.smpHash_struct* %74, i32 0, i32 3
  %76 = load i64* %75, align 8
  %77 = load %struct.smpHash_struct** %2, align 8
  %78 = getelementptr inbounds %struct.smpHash_struct* %77, i32 0, i32 2
  %79 = load i64* %78, align 8
  %80 = udiv i64 %76, %79
  %81 = uitofp i64 %80 to double
  %82 = fcmp ogt double %81, 7.500000e-01
  br i1 %82, label %83, label %98

; <label>:83                                      ; preds = %55
  %84 = load %struct.smpHash_struct** %2, align 8
  %85 = getelementptr inbounds %struct.smpHash_struct* %84, i32 0, i32 2
  %86 = load i64* %85, align 8
  %87 = uitofp i64 %86 to double
  %88 = fmul double %87, 7.500000e-01
  %89 = fdiv double %88, 2.500000e-01
  %90 = fptoui double %89 to i64
  call void @smpHash_core_init_capacity(%struct.smpHash_struct* sret %hash2, i64 %90)
  %91 = load %struct.smpHash_struct** %2, align 8
  %92 = call i32 @smpHash_core_copy(%struct.smpHash_struct* %hash2, %struct.smpHash_struct* %91)
  %93 = load %struct.smpHash_struct** %2, align 8
  %94 = call i32 @smpHash_core_clear(%struct.smpHash_struct* %93)
  %95 = load %struct.smpHash_struct** %2, align 8
  %96 = bitcast %struct.smpHash_struct* %95 to i8*
  %97 = bitcast %struct.smpHash_struct* %hash2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 64, i32 8, i1 false)
  br label %98

; <label>:98                                      ; preds = %83, %55
  store i32 0, i32* %1
  br label %99

; <label>:99                                      ; preds = %98, %11
  %100 = load i32* %1
  ret i32 %100
}

define void @smpHash_core_init_capacity(%struct.smpHash_struct* sret %agg.result, i64 %capacity) nounwind {
  %1 = alloca i64, align 8
  %hash = alloca %struct.smpHash_struct, align 8
  store i64 %capacity, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 2
  store i64 %2, i64* %3, align 8
  %4 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 2
  %5 = load i64* %4, align 8
  %6 = mul i64 32, %5
  %7 = call i8* @smp_malloc(i64 %6)
  %8 = bitcast i8* %7 to %struct.obj_struct*
  %9 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  store %struct.obj_struct* %8, %struct.obj_struct** %9, align 8
  %10 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %11 = load %struct.obj_struct** %10, align 8
  %12 = bitcast %struct.obj_struct* %11 to i8*
  %13 = call i64 @llvm.objectsize.i64(i8* %12, i1 false)
  %14 = icmp ne i64 %13, -1
  br i1 %14, label %15, label %27

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %17 = load %struct.obj_struct** %16, align 8
  %18 = bitcast %struct.obj_struct* %17 to i8*
  %19 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 2
  %20 = load i64* %19, align 8
  %21 = mul i64 32, %20
  %22 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %23 = load %struct.obj_struct** %22, align 8
  %24 = bitcast %struct.obj_struct* %23 to i8*
  %25 = call i64 @llvm.objectsize.i64(i8* %24, i1 false)
  %26 = call i8* @__memset_chk(i8* %18, i32 0, i64 %21, i64 %25)
  br label %35

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %29 = load %struct.obj_struct** %28, align 8
  %30 = bitcast %struct.obj_struct* %29 to i8*
  %31 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 2
  %32 = load i64* %31, align 8
  %33 = mul i64 32, %32
  %34 = call i8* @__inline_memset_chk(i8* %30, i32 0, i64 %33)
  br label %35

; <label>:35                                      ; preds = %27, %15
  %36 = phi i8* [ %26, %15 ], [ %34, %27 ]
  %37 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 1
  %38 = bitcast %struct.obj_struct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %39 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = bitcast %struct.smpHash_struct* %agg.result to i8*
  %42 = bitcast %struct.smpHash_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 64, i32 8, i1 false)
  ret void
}

define i32 @smpHash_core_copy(%struct.smpHash_struct* %res, %struct.smpHash_struct* %hash) nounwind {
  %1 = alloca %struct.smpHash_struct*, align 8
  %2 = alloca %struct.smpHash_struct*, align 8
  %i = alloca i64, align 8
  %list = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.smpHash_struct* %res, %struct.smpHash_struct** %1, align 8
  store %struct.smpHash_struct* %hash, %struct.smpHash_struct** %2, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %46, %0
  %5 = load i64* %i, align 8
  %6 = load %struct.smpHash_struct** %2, align 8
  %7 = getelementptr inbounds %struct.smpHash_struct* %6, i32 0, i32 2
  %8 = load i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %49

; <label>:10                                      ; preds = %4
  %11 = load i64* %i, align 8
  %12 = load %struct.smpHash_struct** %2, align 8
  %13 = getelementptr inbounds %struct.smpHash_struct* %12, i32 0, i32 0
  %14 = load %struct.obj_struct** %13, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 %11
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %45

; <label>:19                                      ; preds = %10
  %20 = load i64* %i, align 8
  %21 = load %struct.smpHash_struct** %2, align 8
  %22 = getelementptr inbounds %struct.smpHash_struct* %21, i32 0, i32 0
  %23 = load %struct.obj_struct** %22, align 8
  %24 = getelementptr inbounds %struct.obj_struct* %23, i64 %20
  store %struct.obj_struct* %24, %struct.obj_struct** %list, align 8
  br label %25

; <label>:25                                      ; preds = %28, %19
  %26 = load %struct.obj_struct** %list, align 8
  %27 = icmp ne %struct.obj_struct* %26, null
  br i1 %27, label %28, label %44

; <label>:28                                      ; preds = %25
  %29 = load %struct.smpHash_struct** %1, align 8
  %30 = load %struct.obj_struct** %list, align 8
  %31 = getelementptr inbounds %struct.obj_struct* %30, i32 0, i32 3
  %32 = load i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.smpPair_struct*
  %34 = getelementptr inbounds %struct.smpPair_struct* %33, i32 0, i32 0
  %35 = bitcast %struct.obj_struct* %3 to i8*
  %36 = bitcast %struct.obj_struct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  %37 = call i32 @smpHash_core_add_now(%struct.smpHash_struct* %29, %struct.obj_struct* byval %3)
  %38 = load %struct.obj_struct** %list, align 8
  %39 = getelementptr inbounds %struct.obj_struct* %38, i32 0, i32 3
  %40 = load i8** %39, align 8
  %41 = bitcast i8* %40 to %struct.smpPair_struct*
  %42 = getelementptr inbounds %struct.smpPair_struct* %41, i32 0, i32 1
  %43 = load %struct.obj_struct** %42, align 8
  store %struct.obj_struct* %43, %struct.obj_struct** %list, align 8
  br label %25

; <label>:44                                      ; preds = %25
  br label %45

; <label>:45                                      ; preds = %44, %10
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load i64* %i, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %i, align 8
  br label %4

; <label>:49                                      ; preds = %4
  ret i32 0
}

define i32 @smpHash_core_clear(%struct.smpHash_struct* %hash) nounwind {
  %1 = alloca %struct.smpHash_struct*, align 8
  store %struct.smpHash_struct* %hash, %struct.smpHash_struct** %1, align 8
  %2 = load %struct.smpHash_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smpHash_struct* %2, i32 0, i32 0
  %4 = load %struct.obj_struct** %3, align 8
  %5 = bitcast %struct.obj_struct* %4 to i8*
  call void @smp_free(i8* %5)
  ret i32 0
}

define void @smpHash_containsp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0))
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([34 x i8]* @.str152, i32 0, i32 0))
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define void @smpList_cdr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %cdr = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpPair_struct*
  %6 = getelementptr inbounds %struct.smpPair_struct* %5, i32 0, i32 1
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

define void @smpHash_init(%struct.obj_struct* sret %agg.result) nounwind {
  call void @smpHash_init_capacity(%struct.obj_struct* sret %agg.result, i64 10)
  ret void
}

define void @smpHash_init_capacity(%struct.obj_struct* sret %agg.result, i64 %capacity) nounwind {
  %1 = alloca i64, align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i64 %capacity, i64* %1, align 8
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([5 x i8]* @.str151, i32 0, i32 0))
  %3 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* %5)
  %6 = call i8* @smp_malloc(i64 64)
  %7 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smpHash_struct*
  %11 = load i64* %1, align 8
  call void @smpHash_core_init_capacity(%struct.smpHash_struct* sret %10, i64 %11)
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  %13 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  ret void
}

define void @smpHash_make_string(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %fun) nounwind {
  %1 = alloca i8*, align 8
  %hash = alloca %struct.smpHash_struct, align 8
  %str = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %space = alloca %struct.obj_struct, align 8
  %l_paren = alloca %struct.obj_struct, align 8
  %r_paren = alloca %struct.obj_struct, align 8
  %i = alloca i64, align 8
  %list = alloca %struct.obj_struct*, align 8
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
  store i8* %fun, i8** %1, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.smpHash_struct*
  %30 = bitcast %struct.smpHash_struct* %hash to i8*
  %31 = bitcast %struct.smpHash_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 64, i32 8, i1 false)
  %32 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %33 = load %struct.obj_struct** %32, align 8
  %34 = icmp ne %struct.obj_struct* %33, null
  br i1 %34, label %37, label %35

; <label>:35                                      ; preds = %0
  %36 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %118

; <label>:37                                      ; preds = %0
  call void @smpString_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([6 x i8]* @.str153, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %space, i8* getelementptr inbounds ([2 x i8]* @.str103, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %l_paren, i8* getelementptr inbounds ([2 x i8]* @.str154, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %r_paren, i8* getelementptr inbounds ([2 x i8]* @.str104, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %38

; <label>:38                                      ; preds = %110, %37
  %39 = load i64* %i, align 8
  %40 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 2
  %41 = load i64* %40, align 8
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %113

; <label>:43                                      ; preds = %38
  %44 = load i64* %i, align 8
  %45 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %46 = load %struct.obj_struct** %45, align 8
  %47 = getelementptr inbounds %struct.obj_struct* %46, i64 %44
  %48 = getelementptr inbounds %struct.obj_struct* %47, i32 0, i32 3
  %49 = load i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %109

; <label>:51                                      ; preds = %43
  %52 = load i64* %i, align 8
  %53 = getelementptr inbounds %struct.smpHash_struct* %hash, i32 0, i32 0
  %54 = load %struct.obj_struct** %53, align 8
  %55 = getelementptr inbounds %struct.obj_struct* %54, i64 %52
  store %struct.obj_struct* %55, %struct.obj_struct** %list, align 8
  br label %56

; <label>:56                                      ; preds = %93, %51
  %57 = load %struct.obj_struct** %list, align 8
  %58 = icmp ne %struct.obj_struct* %57, null
  br i1 %58, label %59, label %108

; <label>:59                                      ; preds = %56
  %60 = load %struct.obj_struct** %list, align 8
  %61 = getelementptr inbounds %struct.obj_struct* %60, i32 0, i32 3
  %62 = load i8** %61, align 8
  %63 = bitcast i8* %62 to %struct.smpPair_struct*
  %64 = getelementptr inbounds %struct.smpPair_struct* %63, i32 0, i32 0
  %65 = bitcast %struct.obj_struct* %2 to i8*
  %66 = bitcast %struct.obj_struct* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 32, i32 8, i1 false)
  %67 = load i8** %1, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %str, %struct.obj_struct* byval %2, i8* %67, i32 0, %struct.obj_struct* null)
  %68 = getelementptr inbounds %struct.obj_struct* %str, i32 0, i32 2
  %69 = load %struct.smpType_struct** %68, align 8
  %70 = getelementptr inbounds %struct.smpType_struct* %69, i32 0, i32 0
  %71 = load i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

; <label>:74                                      ; preds = %59
  call void @obj_clear(%struct.obj_struct* sret %3, %struct.obj_struct* %res)
  call void @obj_clear(%struct.obj_struct* sret %4, %struct.obj_struct* %space)
  call void @obj_clear(%struct.obj_struct* sret %5, %struct.obj_struct* %l_paren)
  call void @obj_clear(%struct.obj_struct* sret %6, %struct.obj_struct* %r_paren)
  %75 = bitcast %struct.obj_struct* %agg.result to i8*
  %76 = bitcast %struct.obj_struct* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 32, i32 8, i1 false)
  br label %118

; <label>:77                                      ; preds = %59
  %78 = getelementptr inbounds %struct.obj_struct* %str, i32 0, i32 2
  %79 = load %struct.smpType_struct** %78, align 8
  %80 = getelementptr inbounds %struct.smpType_struct* %79, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

; <label>:86                                      ; preds = %77
  call void @obj_clear(%struct.obj_struct* sret %7, %struct.obj_struct* %res)
  call void @obj_clear(%struct.obj_struct* sret %8, %struct.obj_struct* %space)
  call void @obj_clear(%struct.obj_struct* sret %9, %struct.obj_struct* %l_paren)
  call void @obj_clear(%struct.obj_struct* sret %10, %struct.obj_struct* %r_paren)
  call void @smp_getclass(%struct.obj_struct* sret %12, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %87 = getelementptr inbounds %struct.obj_struct* %12, i32 0, i32 3
  %88 = load i8** %87, align 8
  %89 = bitcast i8* %88 to %struct.smpType_struct*
  %90 = bitcast %struct.obj_struct* %13 to i8*
  %91 = bitcast %struct.obj_struct* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %11, %struct.smpType_struct* %89, %struct.obj_struct* byval %13)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %11)
  br label %118

; <label>:92                                      ; preds = %77
  br label %93

; <label>:93                                      ; preds = %92
  %94 = bitcast %struct.obj_struct* %14 to i8*
  %95 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %15, %struct.obj_struct* byval %14, i32 1, %struct.obj_struct* %space)
  %96 = bitcast %struct.obj_struct* %16 to i8*
  %97 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %17, %struct.obj_struct* byval %16, i32 1, %struct.obj_struct* %l_paren)
  %98 = bitcast %struct.obj_struct* %18 to i8*
  %99 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %19, %struct.obj_struct* byval %18, i32 1, %struct.obj_struct* %str)
  %100 = bitcast %struct.obj_struct* %20 to i8*
  %101 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %21, %struct.obj_struct* byval %20, i32 1, %struct.obj_struct* %r_paren)
  %102 = load %struct.obj_struct** %list, align 8
  %103 = getelementptr inbounds %struct.obj_struct* %102, i32 0, i32 3
  %104 = load i8** %103, align 8
  %105 = bitcast i8* %104 to %struct.smpPair_struct*
  %106 = getelementptr inbounds %struct.smpPair_struct* %105, i32 0, i32 1
  %107 = load %struct.obj_struct** %106, align 8
  store %struct.obj_struct* %107, %struct.obj_struct** %list, align 8
  br label %56

; <label>:108                                     ; preds = %56
  br label %109

; <label>:109                                     ; preds = %108, %43
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i64* %i, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %i, align 8
  br label %38

; <label>:113                                     ; preds = %38
  %114 = bitcast %struct.obj_struct* %22 to i8*
  %115 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %23, %struct.obj_struct* byval %22, i32 1, %struct.obj_struct* %r_paren)
  call void @obj_clear(%struct.obj_struct* sret %24, %struct.obj_struct* %space)
  call void @obj_clear(%struct.obj_struct* sret %25, %struct.obj_struct* %l_paren)
  call void @obj_clear(%struct.obj_struct* sret %26, %struct.obj_struct* %r_paren)
  %116 = bitcast %struct.obj_struct* %agg.result to i8*
  %117 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 32, i32 8, i1 false)
  br label %118

; <label>:118                                     ; preds = %113, %86, %74, %35
  ret void
}

define i32 @smpInteger_create_class() nounwind {
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
  %63 = alloca %struct.obj_struct, align 8
  %64 = alloca %struct.obj_struct, align 8
  %65 = alloca %struct.obj_struct, align 8
  %66 = alloca %struct.obj_struct, align 8
  %67 = alloca %struct.obj_struct, align 8
  %68 = alloca %struct.obj_struct, align 8
  call void @__gmp_set_memory_functions(i8* (i64)* @smp_malloc, i8* (i8*, i64, i64)* @smp_realloc_size, void (i8*, i64)* @smp_free_size)
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %69 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %70 = load i8** %69, align 8
  %71 = bitcast i8* %70 to %struct.smpType_struct*
  %72 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), %struct.smpType_struct* %71, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %intclass, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  %73 = getelementptr inbounds %struct.obj_struct* %intclass, i32 0, i32 3
  %74 = load i8** %73, align 8
  %75 = bitcast i8* %74 to %struct.smpType_struct*
  %76 = bitcast %struct.smpType_struct* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_int to i8*), i8* %76, i64 64, i32 8, i1 false)
  call void @minihash_get(%struct.obj_struct* sret %2, %struct.minihash_struct* @smpType_ids, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  %77 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %78 = load i8** %77, align 8
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* @smpType_id_int, align 4
  %80 = bitcast %struct.obj_struct* %3 to i8*
  %81 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %4, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %5, %struct.obj_struct* byval %3, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %4)
  %82 = bitcast %struct.obj_struct* %6 to i8*
  %83 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %7, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_add, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %8, %struct.obj_struct* byval %6, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str64, i32 0, i32 0), %struct.obj_struct* byval %7)
  %84 = bitcast %struct.obj_struct* %9 to i8*
  %85 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %10, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_sub, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %11, %struct.obj_struct* byval %9, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str65, i32 0, i32 0), %struct.obj_struct* byval %10)
  %86 = bitcast %struct.obj_struct* %12 to i8*
  %87 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %13, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_mul, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %14, %struct.obj_struct* byval %12, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str66, i32 0, i32 0), %struct.obj_struct* byval %13)
  %88 = bitcast %struct.obj_struct* %15 to i8*
  %89 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %16, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_div, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %17, %struct.obj_struct* byval %15, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str67, i32 0, i32 0), %struct.obj_struct* byval %16)
  %90 = bitcast %struct.obj_struct* %18 to i8*
  %91 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %19, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_mod, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %20, %struct.obj_struct* byval %18, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str68, i32 0, i32 0), %struct.obj_struct* byval %19)
  %92 = bitcast %struct.obj_struct* %21 to i8*
  %93 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %22, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_mod, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %23, %struct.obj_struct* byval %21, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str155, i32 0, i32 0), %struct.obj_struct* byval %22)
  %94 = bitcast %struct.obj_struct* %24 to i8*
  %95 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %25, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_pow, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %26, %struct.obj_struct* byval %24, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str117, i32 0, i32 0), %struct.obj_struct* byval %25)
  %96 = bitcast %struct.obj_struct* %27 to i8*
  %97 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %28, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_shl, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %29, %struct.obj_struct* byval %27, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str69, i32 0, i32 0), %struct.obj_struct* byval %28)
  %98 = bitcast %struct.obj_struct* %30 to i8*
  %99 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %31, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_shr, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %32, %struct.obj_struct* byval %30, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str70, i32 0, i32 0), %struct.obj_struct* byval %31)
  %100 = bitcast %struct.obj_struct* %33 to i8*
  %101 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %34, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_and, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %35, %struct.obj_struct* byval %33, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str71, i32 0, i32 0), %struct.obj_struct* byval %34)
  %102 = bitcast %struct.obj_struct* %36 to i8*
  %103 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %37, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_ior, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %38, %struct.obj_struct* byval %36, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str72, i32 0, i32 0), %struct.obj_struct* byval %37)
  %104 = bitcast %struct.obj_struct* %39 to i8*
  %105 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %40, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_xor, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %41, %struct.obj_struct* byval %39, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str73, i32 0, i32 0), %struct.obj_struct* byval %40)
  %106 = bitcast %struct.obj_struct* %42 to i8*
  %107 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %43, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %44, %struct.obj_struct* byval %42, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str48, i32 0, i32 0), %struct.obj_struct* byval %43)
  %108 = bitcast %struct.obj_struct* %45 to i8*
  %109 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %46, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_nequalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %47, %struct.obj_struct* byval %45, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), %struct.obj_struct* byval %46)
  %110 = bitcast %struct.obj_struct* %48 to i8*
  %111 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %111, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %49, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_lt, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %50, %struct.obj_struct* byval %48, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str119, i32 0, i32 0), %struct.obj_struct* byval %49)
  %112 = bitcast %struct.obj_struct* %51 to i8*
  %113 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %52, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_le, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %53, %struct.obj_struct* byval %51, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str120, i32 0, i32 0), %struct.obj_struct* byval %52)
  %114 = bitcast %struct.obj_struct* %54 to i8*
  %115 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %55, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_ge, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %56, %struct.obj_struct* byval %54, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str121, i32 0, i32 0), %struct.obj_struct* byval %55)
  %116 = bitcast %struct.obj_struct* %57 to i8*
  %117 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %58, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_gt, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %59, %struct.obj_struct* byval %57, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str122, i32 0, i32 0), %struct.obj_struct* byval %58)
  %118 = bitcast %struct.obj_struct* %60 to i8*
  %119 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %61, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_eq, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %62, %struct.obj_struct* byval %60, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), %struct.obj_struct* byval %61)
  %120 = bitcast %struct.obj_struct* %63 to i8*
  %121 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %64, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %65, %struct.obj_struct* byval %63, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), %struct.obj_struct* byval %64)
  %122 = bitcast %struct.obj_struct* %66 to i8*
  %123 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %67, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpInteger_to_s, i32 3, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str130, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %68, %struct.obj_struct* byval %66, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %67)
  call void @smpInteger_init_clong(%struct.obj_struct* sret @smpInteger_zero, i64 0)
  call void @smpInteger_init_clong(%struct.obj_struct* sret @smpInteger_one, i64 1)
  ret i32 0
}

declare void @__gmp_set_memory_functions(i8* (i64)*, i8* (i8*, i64, i64)*, void (i8*, i64)*)

define void @smpInteger_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to [1 x %5]*
  %6 = getelementptr inbounds [1 x %5]* %5, i32 0, i32 0
  call void @__gmpz_clear(%5* %6)
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpInteger_div(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %res = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 16)
  %16 = bitcast i8* %15 to [1 x %5]*
  store [1 x %5]* %16, [1 x %5]** %z, align 8
  %17 = load [1 x %5]** %z, align 8
  %18 = getelementptr inbounds [1 x %5]* %17, i32 0, i32 0
  call void @__gmpz_init(%5* %18)
  %19 = load [1 x %5]** %z, align 8
  %20 = getelementptr inbounds [1 x %5]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to [1 x %5]*
  %24 = getelementptr inbounds [1 x %5]* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %5]*
  %30 = getelementptr inbounds [1 x %5]* %29, i32 0, i32 0
  call void @__gmpz_fdiv_q(%5* %20, %5* %24, %5* %30)
  %31 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %31)
  br label %69

; <label>:32                                      ; preds = %0
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 2
  %36 = load %struct.smpType_struct** %35, align 8
  %37 = getelementptr inbounds %struct.smpType_struct* %36, i32 0, i32 1
  %38 = load i32* %37, align 4
  %39 = load i32* @smpType_id_float, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

; <label>:41                                      ; preds = %32
  %42 = call i8* @smp_malloc(i64 32)
  %43 = bitcast i8* %42 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %43, [1 x %struct.anon]** %res, align 8
  %44 = load [1 x %struct.anon]** %res, align 8
  %45 = getelementptr inbounds [1 x %struct.anon]* %44, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %45)
  %46 = load [1 x %struct.anon]** %res, align 8
  %47 = getelementptr inbounds [1 x %struct.anon]* %46, i32 0, i32 0
  %48 = load %struct.obj_struct** %2, align 8
  %49 = getelementptr inbounds %struct.obj_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %struct.anon]*
  %53 = getelementptr inbounds [1 x %struct.anon]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %5]*
  %57 = getelementptr inbounds [1 x %5]* %56, i32 0, i32 0
  %58 = load i32* @smp_mpfr_rnd, align 4
  %59 = call i32 @mpfr_div_z(%struct.anon* %47, %struct.anon* %53, %5* %57, i32 %58)
  %60 = load [1 x %struct.anon]** %res, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %60)
  br label %69

; <label>:61                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %63 = load i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.smpType_struct*
  %65 = load %struct.obj_struct** %2, align 8
  %66 = getelementptr inbounds %struct.obj_struct* %65, i64 0
  %67 = bitcast %struct.obj_struct* %5 to i8*
  %68 = bitcast %struct.obj_struct* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %64, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %69

; <label>:69                                      ; preds = %61, %41, %14
  ret void
}

define void @smpInteger_mod(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smpType_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %5]*
  store [1 x %5]* %15, [1 x %5]** %z, align 8
  %16 = load [1 x %5]** %z, align 8
  %17 = getelementptr inbounds [1 x %5]* %16, i32 0, i32 0
  call void @__gmpz_init(%5* %17)
  %18 = load [1 x %5]** %z, align 8
  %19 = getelementptr inbounds [1 x %5]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %5]*
  %23 = getelementptr inbounds [1 x %5]* %22, i32 0, i32 0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 3
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to [1 x %5]*
  %29 = getelementptr inbounds [1 x %5]* %28, i32 0, i32 0
  call void @__gmpz_mod(%5* %19, %5* %23, %5* %29)
  %30 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %30)
  br label %36

; <label>:31                                      ; preds = %0
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %4 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_int, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %36

; <label>:36                                      ; preds = %31, %13
  ret void
}

define void @smpInteger_pow(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %f = alloca [1 x %struct.anon], align 8
  %z = alloca [1 x %5]*, align 8
  %f1 = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smpType_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %44

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds [1 x %struct.anon]* %f, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %15)
  %16 = getelementptr inbounds [1 x %struct.anon]* %f, i32 0, i32 0
  %17 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %18 = load i8** %17, align 8
  %19 = bitcast i8* %18 to [1 x %5]*
  %20 = getelementptr inbounds [1 x %5]* %19, i32 0, i32 0
  %21 = load i32* @smp_mpfr_rnd, align 4
  %22 = call i32 @mpfr_set_z(%struct.anon* %16, %5* %20, i32 %21)
  %23 = getelementptr inbounds [1 x %struct.anon]* %f, i32 0, i32 0
  %24 = getelementptr inbounds [1 x %struct.anon]* %f, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %5]*
  %30 = getelementptr inbounds [1 x %5]* %29, i32 0, i32 0
  %31 = load i32* @smp_mpfr_rnd, align 4
  %32 = call i32 @mpfr_pow_z(%struct.anon* %23, %struct.anon* %24, %5* %30, i32 %31)
  %33 = call i8* @smp_malloc(i64 16)
  %34 = bitcast i8* %33 to [1 x %5]*
  store [1 x %5]* %34, [1 x %5]** %z, align 8
  %35 = load [1 x %5]** %z, align 8
  %36 = getelementptr inbounds [1 x %5]* %35, i32 0, i32 0
  call void @__gmpz_init(%5* %36)
  %37 = load [1 x %5]** %z, align 8
  %38 = getelementptr inbounds [1 x %5]* %37, i32 0, i32 0
  %39 = getelementptr inbounds [1 x %struct.anon]* %f, i32 0, i32 0
  %40 = load i32* @smp_mpfr_rnd, align 4
  %41 = call i32 @mpfr_get_z(%5* %38, %struct.anon* %39, i32 %40)
  %42 = getelementptr inbounds [1 x %struct.anon]* %f, i32 0, i32 0
  call void @mpfr_clear(%struct.anon* %42)
  %43 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %43)
  br label %81

; <label>:44                                      ; preds = %0
  %45 = load %struct.obj_struct** %2, align 8
  %46 = getelementptr inbounds %struct.obj_struct* %45, i64 0
  %47 = getelementptr inbounds %struct.obj_struct* %46, i32 0, i32 2
  %48 = load %struct.smpType_struct** %47, align 8
  %49 = getelementptr inbounds %struct.smpType_struct* %48, i32 0, i32 1
  %50 = load i32* %49, align 4
  %51 = load i32* @smpType_id_float, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %73

; <label>:53                                      ; preds = %44
  %54 = call i8* @smp_malloc(i64 32)
  %55 = bitcast i8* %54 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %55, [1 x %struct.anon]** %f1, align 8
  %56 = load [1 x %struct.anon]** %f1, align 8
  %57 = getelementptr inbounds [1 x %struct.anon]* %56, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %57)
  %58 = load [1 x %struct.anon]** %f1, align 8
  %59 = getelementptr inbounds [1 x %struct.anon]* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %61 = load i8** %60, align 8
  %62 = bitcast i8* %61 to [1 x %struct.anon]*
  %63 = getelementptr inbounds [1 x %struct.anon]* %62, i32 0, i32 0
  %64 = load %struct.obj_struct** %2, align 8
  %65 = getelementptr inbounds %struct.obj_struct* %64, i64 0
  %66 = getelementptr inbounds %struct.obj_struct* %65, i32 0, i32 3
  %67 = load i8** %66, align 8
  %68 = bitcast i8* %67 to [1 x %struct.anon]*
  %69 = getelementptr inbounds [1 x %struct.anon]* %68, i32 0, i32 0
  %70 = load i32* @smp_mpfr_rnd, align 4
  %71 = call i32 @mpfr_pow(%struct.anon* %59, %struct.anon* %63, %struct.anon* %69, i32 %70)
  %72 = load [1 x %struct.anon]** %f1, align 8
  call void @smpFloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %72)
  br label %81

; <label>:73                                      ; preds = %44
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %74 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %75 = load i8** %74, align 8
  %76 = bitcast i8* %75 to %struct.smpType_struct*
  %77 = load %struct.obj_struct** %2, align 8
  %78 = getelementptr inbounds %struct.obj_struct* %77, i64 0
  %79 = bitcast %struct.obj_struct* %5 to i8*
  %80 = bitcast %struct.obj_struct* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %76, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %81

; <label>:81                                      ; preds = %73, %53, %14
  ret void
}

define void @smpInteger_shl(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %x = alloca [1 x %5]*, align 8
  %bits = alloca i64, align 8
  %z = alloca [1 x %5]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smpType_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %41

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to [1 x %5]*
  store [1 x %5]* %18, [1 x %5]** %x, align 8
  %19 = load [1 x %5]** %x, align 8
  %20 = getelementptr inbounds [1 x %5]* %19, i32 0, i32 0
  %21 = call i32 @__gmpz_fits_ulong_p(%5* %20) readonly
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %13
  %24 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %46

; <label>:25                                      ; preds = %13
  %26 = load [1 x %5]** %x, align 8
  %27 = getelementptr inbounds [1 x %5]* %26, i32 0, i32 0
  %28 = call i64 @__gmpz_get_ui(%5* %27) readonly
  store i64 %28, i64* %bits, align 8
  %29 = call i8* @smp_malloc(i64 16)
  %30 = bitcast i8* %29 to [1 x %5]*
  store [1 x %5]* %30, [1 x %5]** %z, align 8
  %31 = load [1 x %5]** %z, align 8
  %32 = getelementptr inbounds [1 x %5]* %31, i32 0, i32 0
  call void @__gmpz_init(%5* %32)
  %33 = load [1 x %5]** %z, align 8
  %34 = getelementptr inbounds [1 x %5]* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to [1 x %5]*
  %38 = getelementptr inbounds [1 x %5]* %37, i32 0, i32 0
  %39 = load i64* %bits, align 8
  call void @__gmpz_mul_2exp(%5* %34, %5* %38, i64 %39)
  %40 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %40)
  br label %46

; <label>:41                                      ; preds = %0
  %42 = load %struct.obj_struct** %2, align 8
  %43 = getelementptr inbounds %struct.obj_struct* %42, i64 0
  %44 = bitcast %struct.obj_struct* %4 to i8*
  %45 = bitcast %struct.obj_struct* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_int, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %46

; <label>:46                                      ; preds = %41, %25, %23
  ret void
}

define void @smpInteger_shr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %x = alloca [1 x %5]*, align 8
  %bits = alloca i64, align 8
  %z = alloca [1 x %5]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smpType_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %41

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to [1 x %5]*
  store [1 x %5]* %18, [1 x %5]** %x, align 8
  %19 = load [1 x %5]** %x, align 8
  %20 = getelementptr inbounds [1 x %5]* %19, i32 0, i32 0
  %21 = call i32 @__gmpz_fits_ulong_p(%5* %20) readonly
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %13
  %24 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %46

; <label>:25                                      ; preds = %13
  %26 = load [1 x %5]** %x, align 8
  %27 = getelementptr inbounds [1 x %5]* %26, i32 0, i32 0
  %28 = call i64 @__gmpz_get_ui(%5* %27) readonly
  store i64 %28, i64* %bits, align 8
  %29 = call i8* @smp_malloc(i64 16)
  %30 = bitcast i8* %29 to [1 x %5]*
  store [1 x %5]* %30, [1 x %5]** %z, align 8
  %31 = load [1 x %5]** %z, align 8
  %32 = getelementptr inbounds [1 x %5]* %31, i32 0, i32 0
  call void @__gmpz_init(%5* %32)
  %33 = load [1 x %5]** %z, align 8
  %34 = getelementptr inbounds [1 x %5]* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to [1 x %5]*
  %38 = getelementptr inbounds [1 x %5]* %37, i32 0, i32 0
  %39 = load i64* %bits, align 8
  call void @__gmpz_fdiv_q_2exp(%5* %34, %5* %38, i64 %39)
  %40 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %40)
  br label %46

; <label>:41                                      ; preds = %0
  %42 = load %struct.obj_struct** %2, align 8
  %43 = getelementptr inbounds %struct.obj_struct* %42, i64 0
  %44 = bitcast %struct.obj_struct* %4 to i8*
  %45 = bitcast %struct.obj_struct* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_int, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %46

; <label>:46                                      ; preds = %41, %25, %23
  ret void
}

define void @smpInteger_and(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smpType_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %5]*
  store [1 x %5]* %15, [1 x %5]** %z, align 8
  %16 = load [1 x %5]** %z, align 8
  %17 = getelementptr inbounds [1 x %5]* %16, i32 0, i32 0
  call void @__gmpz_init(%5* %17)
  %18 = load [1 x %5]** %z, align 8
  %19 = getelementptr inbounds [1 x %5]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %5]*
  %23 = getelementptr inbounds [1 x %5]* %22, i32 0, i32 0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 3
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to [1 x %5]*
  %29 = getelementptr inbounds [1 x %5]* %28, i32 0, i32 0
  call void @__gmpz_and(%5* %19, %5* %23, %5* %29)
  %30 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %30)
  br label %36

; <label>:31                                      ; preds = %0
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %4 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_int, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %36

; <label>:36                                      ; preds = %31, %13
  ret void
}

define void @smpInteger_ior(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smpType_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %5]*
  store [1 x %5]* %15, [1 x %5]** %z, align 8
  %16 = load [1 x %5]** %z, align 8
  %17 = getelementptr inbounds [1 x %5]* %16, i32 0, i32 0
  call void @__gmpz_init(%5* %17)
  %18 = load [1 x %5]** %z, align 8
  %19 = getelementptr inbounds [1 x %5]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %5]*
  %23 = getelementptr inbounds [1 x %5]* %22, i32 0, i32 0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 3
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to [1 x %5]*
  %29 = getelementptr inbounds [1 x %5]* %28, i32 0, i32 0
  call void @__gmpz_ior(%5* %19, %5* %23, %5* %29)
  %30 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %30)
  br label %36

; <label>:31                                      ; preds = %0
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %4 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_int, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %36

; <label>:36                                      ; preds = %31, %13
  ret void
}

define void @smpInteger_xor(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %5]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smpType_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %5]*
  store [1 x %5]* %15, [1 x %5]** %z, align 8
  %16 = load [1 x %5]** %z, align 8
  %17 = getelementptr inbounds [1 x %5]* %16, i32 0, i32 0
  call void @__gmpz_init(%5* %17)
  %18 = load [1 x %5]** %z, align 8
  %19 = getelementptr inbounds [1 x %5]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %5]*
  %23 = getelementptr inbounds [1 x %5]* %22, i32 0, i32 0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 3
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to [1 x %5]*
  %29 = getelementptr inbounds [1 x %5]* %28, i32 0, i32 0
  call void @__gmpz_xor(%5* %19, %5* %23, %5* %29)
  %30 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %30)
  br label %36

; <label>:31                                      ; preds = %0
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %4 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_int, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %36

; <label>:36                                      ; preds = %31, %13
  ret void
}

define void @smpInteger_lt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpInteger_le(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp sle i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpInteger_ge(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpInteger_gt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %26

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %26

; <label>:26                                      ; preds = %22, %14
  ret void
}

define void @smpInteger_eq(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpInteger_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i32 %6, %struct.obj_struct* %7)
  ret void
}

define void @smpInteger_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  br i1 %7, label %8, label %65

; <label>:8                                       ; preds = %0
  %9 = load %struct.obj_struct** %2, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %9, i64 0
  %11 = getelementptr inbounds %struct.obj_struct* %10, i32 0, i32 2
  %12 = load %struct.smpType_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smpType_struct* %12, i32 0, i32 1
  %14 = load i32* %13, align 4
  %15 = load i32* @smpType_id_nil, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %65, label %17

; <label>:17                                      ; preds = %8
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = getelementptr inbounds %struct.obj_struct* %19, i32 0, i32 2
  %21 = load %struct.smpType_struct** %20, align 8
  %22 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %21, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

; <label>:24                                      ; preds = %17
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 2
  %28 = load %struct.smpType_struct** %27, align 8
  %29 = getelementptr inbounds %struct.smpType_struct* %28, i32 0, i32 0
  %30 = load i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

; <label>:33                                      ; preds = %24
  %34 = load %struct.obj_struct** %2, align 8
  %35 = getelementptr inbounds %struct.obj_struct* %34, i64 0
  %36 = bitcast %struct.obj_struct* %agg.result to i8*
  %37 = bitcast %struct.obj_struct* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  br label %72

; <label>:38                                      ; preds = %24
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  %39 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %40 = load i8** %39, align 8
  %41 = bitcast i8* %40 to %struct.smpType_struct*
  %42 = load %struct.obj_struct** %2, align 8
  %43 = getelementptr inbounds %struct.obj_struct* %42, i64 0
  %44 = bitcast %struct.obj_struct* %5 to i8*
  %45 = bitcast %struct.obj_struct* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %41, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %72

; <label>:46                                      ; preds = %17
  %47 = load %struct.obj_struct** %2, align 8
  %48 = getelementptr inbounds %struct.obj_struct* %47, i64 0
  %49 = getelementptr inbounds %struct.obj_struct* %48, i32 0, i32 3
  %50 = load i8** %49, align 8
  %51 = bitcast i8* %50 to [1 x %5]*
  %52 = getelementptr inbounds [1 x %5]* %51, i32 0, i32 0
  %53 = call i32 @__gmpz_fits_sint_p(%5* %52) readonly
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

; <label>:55                                      ; preds = %46
  %56 = load %struct.obj_struct** %2, align 8
  %57 = getelementptr inbounds %struct.obj_struct* %56, i64 0
  %58 = getelementptr inbounds %struct.obj_struct* %57, i32 0, i32 3
  %59 = load i8** %58, align 8
  %60 = bitcast i8* %59 to [1 x %5]*
  %61 = getelementptr inbounds [1 x %5]* %60, i32 0, i32 0
  %62 = call i64 @__gmpz_get_si(%5* %61) readonly
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %base, align 4
  br label %64

; <label>:64                                      ; preds = %55, %46
  br label %65

; <label>:65                                      ; preds = %64, %8, %0
  %66 = load i32* %base, align 4
  %67 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %68 = load i8** %67, align 8
  %69 = bitcast i8* %68 to [1 x %5]*
  %70 = getelementptr inbounds [1 x %5]* %69, i32 0, i32 0
  %71 = call i8* @__gmpz_get_str(i8* null, i32 %66, %5* %70)
  store i8* %71, i8** %str, align 8
  call void @smpString_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  br label %72

; <label>:72                                      ; preds = %65, %38, %33
  ret void
}

define void @smpInteger_init_mpz(%struct.obj_struct* sret %agg.result, %5* %x) nounwind {
  %1 = alloca %5*, align 8
  %res = alloca %struct.obj_struct, align 8
  store %5* %x, %5** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_int)
  %2 = call i8* @smp_malloc(i64 16)
  %3 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %2, i8** %3, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to [1 x %5]*
  %7 = getelementptr inbounds [1 x %5]* %6, i32 0, i32 0
  %8 = load %5** %1, align 8
  call void @__gmpz_init_set(%5* %7, %5* %8)
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  %10 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  ret void
}

declare void @__gmpz_init_set(%5*, %5*)

define void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %5]* %x) nounwind {
  %1 = alloca [1 x %5]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store [1 x %5]* %x, [1 x %5]** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_int)
  %2 = load [1 x %5]** %1, align 8
  %3 = bitcast [1 x %5]* %2 to i8*
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %3, i8** %4, align 8
  %5 = bitcast %struct.obj_struct* %agg.result to i8*
  %6 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  ret void
}

declare void @__gmpz_init_set_si(%5*, i64)

define void @smpInteger_init_str(%struct.obj_struct* sret %agg.result, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %z = alloca [1 x %5]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store i8* %str, i8** %1, align 8
  %2 = call i8* @smp_malloc(i64 16)
  %3 = bitcast i8* %2 to [1 x %5]*
  store [1 x %5]* %3, [1 x %5]** %z, align 8
  %4 = load [1 x %5]** %z, align 8
  %5 = getelementptr inbounds [1 x %5]* %4, i32 0, i32 0
  %6 = load i8** %1, align 8
  %7 = call i32 @__gmpz_init_set_str(%5* %5, i8* %6, i32 0)
  %8 = load [1 x %5]** %z, align 8
  call void @smpInteger_init_mpz_ref(%struct.obj_struct* sret %res, [1 x %5]* %8)
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  %10 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @__gmpz_init_set_str(%5*, i8*, i32)

declare void @__gmpz_clear(%5*)

declare void @__gmpz_init(%5*)

declare void @__gmpz_add(%5*, %5*, %5*)

declare void @__gmpz_sub(%5*, %5*, %5*)

declare void @__gmpz_mul(%5*, %5*, %5*)

declare void @__gmpz_fdiv_q(%5*, %5*, %5*)

declare void @__gmpz_mod(%5*, %5*, %5*)

declare i32 @mpfr_set_z(%struct.anon*, %5*, i32)

declare i32 @mpfr_get_z(%5*, %struct.anon*, i32)

declare i32 @__gmpz_fits_ulong_p(%5*) readonly

declare i64 @__gmpz_get_ui(%5*) readonly

declare void @__gmpz_mul_2exp(%5*, %5*, i64)

declare void @__gmpz_fdiv_q_2exp(%5*, %5*, i64)

declare void @__gmpz_and(%5*, %5*, %5*)

declare void @__gmpz_ior(%5*, %5*, %5*)

declare void @__gmpz_com(%5*, %5*)

declare void @__gmpz_xor(%5*, %5*, %5*)

declare i32 @__gmpz_cmp(%5*, %5*) readonly

define void @smpInteger_cmp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpInteger_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smpType_struct*
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %4, %struct.smpType_struct* %17, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %25

; <label>:22                                      ; preds = %0
  %23 = load i32* %num, align 4
  %24 = sext i32 %23 to i64
  call void @smpInteger_init_clong(%struct.obj_struct* sret %agg.result, i64 %24)
  br label %25

; <label>:25                                      ; preds = %22, %14
  ret void
}

declare i8* @__gmpz_get_str(i8*, i32, %5*)

define i32 @smpList_create_class() nounwind {
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
  %28 = alloca %struct.obj_struct, align 8
  %29 = alloca %struct.obj_struct, align 8
  %30 = alloca %struct.obj_struct, align 8
  call void @smp_getclass(%struct.obj_struct* sret %listclass, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0))
  %31 = bitcast %struct.obj_struct* %1 to i8*
  %32 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %2)
  %33 = bitcast %struct.obj_struct* %4 to i8*
  %34 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_add_now, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str94, i32 0, i32 0), %struct.obj_struct* byval %5)
  %35 = bitcast %struct.obj_struct* %7 to i8*
  %36 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_car, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str156, i32 0, i32 0), %struct.obj_struct* byval %8)
  %37 = bitcast %struct.obj_struct* %10 to i8*
  %38 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_cdr, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str157, i32 0, i32 0), %struct.obj_struct* byval %11)
  %39 = bitcast %struct.obj_struct* %13 to i8*
  %40 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_emptyp, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str158, i32 0, i32 0), %struct.obj_struct* byval %14)
  %41 = bitcast %struct.obj_struct* %16 to i8*
  %42 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), %struct.obj_struct* byval %17)
  %43 = bitcast %struct.obj_struct* %19 to i8*
  %44 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %20, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_length, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %21, %struct.obj_struct* byval %19, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str159, i32 0, i32 0), %struct.obj_struct* byval %20)
  %45 = bitcast %struct.obj_struct* %22 to i8*
  %46 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %23, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_map, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %24, %struct.obj_struct* byval %22, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str95, i32 0, i32 0), %struct.obj_struct* byval %23)
  %47 = bitcast %struct.obj_struct* %25 to i8*
  %48 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %26, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %27, %struct.obj_struct* byval %25, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %26)
  %49 = bitcast %struct.obj_struct* %28 to i8*
  %50 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %29, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpList_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %30, %struct.obj_struct* byval %28, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %29)
  ret i32 0
}

define void @smpList_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %5 = load %struct.smpType_struct** %4, align 8
  %6 = getelementptr inbounds %struct.smpType_struct* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = load i32* @smpType_id_nil, align 4
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
  %20 = bitcast i8* %19 to %struct.smpPair_struct*
  %21 = getelementptr inbounds %struct.smpPair_struct* %20, i32 0, i32 0
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
  %31 = bitcast i8* %30 to %struct.smpPair_struct*
  %32 = getelementptr inbounds %struct.smpPair_struct* %31, i32 0, i32 1
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

define void @smpList_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %list_core = alloca %struct.smpPair_struct*, align 8
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
  %9 = bitcast i8* %8 to %struct.smpPair_struct*
  %10 = getelementptr inbounds %struct.smpPair_struct* %9, i32 0, i32 1
  %11 = load %struct.obj_struct** %10, align 8
  %12 = icmp eq %struct.obj_struct* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %5
  br label %21

; <label>:14                                      ; preds = %5
  %15 = load %struct.obj_struct** %ptr, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smpPair_struct*
  %19 = getelementptr inbounds %struct.smpPair_struct* %18, i32 0, i32 1
  %20 = load %struct.obj_struct** %19, align 8
  store %struct.obj_struct* %20, %struct.obj_struct** %ptr, align 8
  br label %5

; <label>:21                                      ; preds = %13
  %22 = load %struct.obj_struct** %ptr, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i32 0, i32 3
  %24 = load i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.smpPair_struct*
  store %struct.smpPair_struct* %25, %struct.smpPair_struct** %list_core, align 8
  %26 = load %struct.obj_struct** %2, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i64 0
  %28 = bitcast %struct.obj_struct* %3 to i8*
  %29 = bitcast %struct.obj_struct* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  %30 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpObject_cons_c(%struct.obj_struct* sret %cons_cell, %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  %31 = call i8* @smp_malloc(i64 32)
  %32 = bitcast i8* %31 to %struct.obj_struct*
  %33 = load %struct.smpPair_struct** %list_core, align 8
  %34 = getelementptr inbounds %struct.smpPair_struct* %33, i32 0, i32 1
  store %struct.obj_struct* %32, %struct.obj_struct** %34, align 8
  %35 = load %struct.smpPair_struct** %list_core, align 8
  %36 = getelementptr inbounds %struct.smpPair_struct* %35, i32 0, i32 1
  %37 = load %struct.obj_struct** %36, align 8
  %38 = bitcast %struct.obj_struct* %37 to i8*
  %39 = bitcast %struct.obj_struct* %cons_cell to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  %40 = bitcast %struct.obj_struct* %agg.result to i8*
  %41 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  ret void
}

define void @smpList_emptyp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpList_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %10 = load %struct.smpType_struct** %9, align 8
  %11 = getelementptr inbounds %struct.smpType_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0))
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
  %28 = call i64 @smpList_length_clong(%struct.obj_struct* byval %3)
  %29 = bitcast %struct.obj_struct* %4 to i8*
  %30 = bitcast %struct.obj_struct* %list2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  %31 = call i64 @smpList_length_clong(%struct.obj_struct* byval %4)
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
  %38 = load %struct.smpType_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smpType_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smpType_id_nil, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %99

; <label>:45                                      ; preds = %36
  %46 = getelementptr inbounds %struct.obj_struct* %list1, i32 0, i32 3
  %47 = load i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.smpPair_struct*
  %49 = getelementptr inbounds %struct.smpPair_struct* %48, i32 0, i32 0
  %50 = bitcast %struct.obj_struct* %car1 to i8*
  %51 = bitcast %struct.obj_struct* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 32, i32 8, i1 false)
  %52 = getelementptr inbounds %struct.obj_struct* %list2, i32 0, i32 3
  %53 = load i8** %52, align 8
  %54 = bitcast i8* %53 to %struct.smpPair_struct*
  %55 = getelementptr inbounds %struct.smpPair_struct* %54, i32 0, i32 0
  %56 = bitcast %struct.obj_struct* %car2 to i8*
  %57 = bitcast %struct.obj_struct* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 32, i32 8, i1 false)
  %58 = bitcast %struct.obj_struct* %6 to i8*
  %59 = bitcast %struct.obj_struct* %car1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %5, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), i32 1, %struct.obj_struct* %car2)
  %60 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %5)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

; <label>:62                                      ; preds = %45
  %63 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %101

; <label>:64                                      ; preds = %45
  %65 = getelementptr inbounds %struct.obj_struct* %list1, i32 0, i32 3
  %66 = load i8** %65, align 8
  %67 = bitcast i8* %66 to %struct.smpPair_struct*
  %68 = getelementptr inbounds %struct.smpPair_struct* %67, i32 0, i32 1
  %69 = load %struct.obj_struct** %68, align 8
  %70 = icmp ne %struct.obj_struct* %69, null
  br i1 %70, label %71, label %79

; <label>:71                                      ; preds = %64
  %72 = getelementptr inbounds %struct.obj_struct* %list1, i32 0, i32 3
  %73 = load i8** %72, align 8
  %74 = bitcast i8* %73 to %struct.smpPair_struct*
  %75 = getelementptr inbounds %struct.smpPair_struct* %74, i32 0, i32 1
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
  %84 = bitcast i8* %83 to %struct.smpPair_struct*
  %85 = getelementptr inbounds %struct.smpPair_struct* %84, i32 0, i32 1
  %86 = load %struct.obj_struct** %85, align 8
  %87 = icmp ne %struct.obj_struct* %86, null
  br i1 %87, label %88, label %96

; <label>:88                                      ; preds = %81
  %89 = getelementptr inbounds %struct.obj_struct* %list2, i32 0, i32 3
  %90 = load i8** %89, align 8
  %91 = bitcast i8* %90 to %struct.smpPair_struct*
  %92 = getelementptr inbounds %struct.smpPair_struct* %91, i32 0, i32 1
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

define void @smpList_length(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %length = alloca i64, align 8
  %list = alloca %struct.smpPair_struct*, align 8
  %rest = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %6 = load %struct.smpType_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smpType_struct* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = load i32* @smpType_id_nil, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  call void @smpInteger_init_clong(%struct.obj_struct* sret %agg.result, i64 0)
  br label %51

; <label>:12                                      ; preds = %0
  store i64 0, i64* %length, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smpPair_struct*
  store %struct.smpPair_struct* %15, %struct.smpPair_struct** %list, align 8
  br label %16

; <label>:16                                      ; preds = %48, %12
  %17 = load %struct.smpPair_struct** %list, align 8
  %18 = icmp ne %struct.smpPair_struct* %17, null
  br i1 %18, label %19, label %49

; <label>:19                                      ; preds = %16
  %20 = load i64* %length, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %length, align 8
  %22 = load %struct.smpPair_struct** %list, align 8
  %23 = getelementptr inbounds %struct.smpPair_struct* %22, i32 0, i32 1
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
  %31 = load %struct.smpType_struct** %30, align 8
  %32 = getelementptr inbounds %struct.smpType_struct* %31, i32 0, i32 1
  %33 = load i32* %32, align 4
  %34 = load i32* @smpType_id_list, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

; <label>:36                                      ; preds = %28
  %37 = load %struct.obj_struct** %rest, align 8
  %38 = getelementptr inbounds %struct.obj_struct* %37, i32 0, i32 3
  %39 = load i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.smpPair_struct*
  store %struct.smpPair_struct* %40, %struct.smpPair_struct** %list, align 8
  br label %47

; <label>:41                                      ; preds = %28
  %42 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %43 = load %struct.smpType_struct** %42, align 8
  %44 = load %struct.obj_struct** %rest, align 8
  %45 = bitcast %struct.obj_struct* %4 to i8*
  %46 = bitcast %struct.obj_struct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %43, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %51

; <label>:47                                      ; preds = %36
  br label %48

; <label>:48                                      ; preds = %47
  br label %16

; <label>:49                                      ; preds = %27, %16
  %50 = load i64* %length, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %agg.result, i64 %50)
  br label %51

; <label>:51                                      ; preds = %49, %41, %11
  ret void
}

define void @smpList_map(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %12 = load %struct.smpType_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smpType_struct* %12, i32 0, i32 1
  %14 = load i32* %13, align 4
  %15 = load i32* @smpType_id_nil, align 4
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
  %23 = load %struct.smpType_struct** %22, align 8
  %24 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %23, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %48, label %26

; <label>:26                                      ; preds = %19
  %27 = load %struct.obj_struct** %2, align 8
  %28 = getelementptr inbounds %struct.obj_struct* %27, i64 0
  %29 = getelementptr inbounds %struct.obj_struct* %28, i32 0, i32 2
  %30 = load %struct.smpType_struct** %29, align 8
  %31 = getelementptr inbounds %struct.smpType_struct* %30, i32 0, i32 0
  %32 = load i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
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
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %41 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %42 = load i8** %41, align 8
  %43 = bitcast i8* %42 to %struct.smpType_struct*
  %44 = load %struct.obj_struct** %2, align 8
  %45 = getelementptr inbounds %struct.obj_struct* %44, i64 0
  %46 = bitcast %struct.obj_struct* %5 to i8*
  %47 = bitcast %struct.obj_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %43, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
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
  call void @smpList_car(%struct.obj_struct* sret %car, %struct.obj_struct* byval %6, i32 0, %struct.obj_struct* null)
  %59 = bitcast %struct.obj_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %60 = load %struct.obj_struct** %2, align 8
  %61 = getelementptr inbounds %struct.obj_struct* %60, i64 0
  %62 = bitcast %struct.obj_struct* %8 to i8*
  %63 = bitcast %struct.obj_struct* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 32, i32 8, i1 false)
  call void @smpFunction_call(%struct.obj_struct* sret %called, %struct.obj_struct* byval %7, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %car)
  %64 = getelementptr inbounds %struct.obj_struct* %called, i32 0, i32 2
  %65 = load %struct.smpType_struct** %64, align 8
  %66 = getelementptr inbounds %struct.smpType_struct* %65, i32 0, i32 0
  %67 = load i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
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
  call void @smpObject_cons(%struct.obj_struct* sret %res, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* @smp_nil)
  %81 = bitcast %struct.obj_struct* %last to i8*
  %82 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 32, i32 8, i1 false)
  br label %109

; <label>:83                                      ; preds = %73
  %84 = call i8* @smp_malloc(i64 32)
  %85 = bitcast i8* %84 to %struct.obj_struct*
  %86 = getelementptr inbounds %struct.obj_struct* %last, i32 0, i32 3
  %87 = load i8** %86, align 8
  %88 = bitcast i8* %87 to %struct.smpPair_struct*
  %89 = getelementptr inbounds %struct.smpPair_struct* %88, i32 0, i32 1
  store %struct.obj_struct* %85, %struct.obj_struct** %89, align 8
  %90 = getelementptr inbounds %struct.obj_struct* %last, i32 0, i32 3
  %91 = load i8** %90, align 8
  %92 = bitcast i8* %91 to %struct.smpPair_struct*
  %93 = getelementptr inbounds %struct.smpPair_struct* %92, i32 0, i32 1
  %94 = load %struct.obj_struct** %93, align 8
  %95 = bitcast %struct.obj_struct* %10 to i8*
  %96 = bitcast %struct.obj_struct* %called to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 32, i32 8, i1 false)
  call void @smpObject_cons(%struct.obj_struct* sret %94, %struct.obj_struct* byval %10, i32 1, %struct.obj_struct* @smp_nil)
  %97 = bitcast %struct.obj_struct* %last to i8*
  %98 = bitcast %struct.obj_struct* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 32, i32 8, i1 false)
  %99 = getelementptr inbounds %struct.obj_struct* %last, i32 0, i32 2
  %100 = load %struct.smpType_struct** %99, align 8
  %101 = getelementptr inbounds %struct.smpType_struct* %100, i32 0, i32 0
  %102 = load i8** %101, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
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
  %113 = bitcast i8* %112 to %struct.smpPair_struct*
  %114 = getelementptr inbounds %struct.smpPair_struct* %113, i32 0, i32 1
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

define void @smpList_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpString_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([2 x i8]* @.str154, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %divider, i8* getelementptr inbounds ([2 x i8]* @.str103, i32 0, i32 0))
  store %struct.obj_struct* %obj, %struct.obj_struct** %ptr, align 8
  store i32 1, i32* %first_timep, align 4
  br label %11

; <label>:11                                      ; preds = %33, %0
  %12 = load %struct.obj_struct** %ptr, align 8
  %13 = icmp ne %struct.obj_struct* %12, null
  br i1 %13, label %14, label %42

; <label>:14                                      ; preds = %11
  %15 = load %struct.obj_struct** %ptr, align 8
  %16 = bitcast %struct.obj_struct* %4 to i8*
  %17 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  call void @smpList_car(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i32 0, %struct.obj_struct* null)
  call void @smpObject_funcall(%struct.obj_struct* sret %str2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %18 = getelementptr inbounds %struct.obj_struct* %str2, i32 0, i32 2
  %19 = load %struct.smpType_struct** %18, align 8
  %20 = getelementptr inbounds %struct.smpType_struct* %19, i32 0, i32 0
  %21 = load i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %14
  %25 = bitcast %struct.obj_struct* %agg.result to i8*
  %26 = bitcast %struct.obj_struct* %str2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  br label %47

; <label>:27                                      ; preds = %14
  %28 = load i32* %first_timep, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30                                      ; preds = %27
  %31 = bitcast %struct.obj_struct* %5 to i8*
  %32 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %divider)
  br label %33

; <label>:33                                      ; preds = %30, %27
  %34 = bitcast %struct.obj_struct* %7 to i8*
  %35 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* %str2)
  %36 = load %struct.obj_struct** %ptr, align 8
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 3
  %38 = load i8** %37, align 8
  %39 = bitcast i8* %38 to %struct.smpPair_struct*
  %40 = getelementptr inbounds %struct.smpPair_struct* %39, i32 0, i32 1
  %41 = load %struct.obj_struct** %40, align 8
  store %struct.obj_struct* %41, %struct.obj_struct** %ptr, align 8
  store i32 0, i32* %first_timep, align 4
  br label %11

; <label>:42                                      ; preds = %11
  call void @smpString_init(%struct.obj_struct* sret %paren, i8* getelementptr inbounds ([2 x i8]* @.str104, i32 0, i32 0))
  %43 = bitcast %struct.obj_struct* %9 to i8*
  %44 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %10, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %paren)
  %45 = bitcast %struct.obj_struct* %agg.result to i8*
  %46 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  br label %47

; <label>:47                                      ; preds = %42, %24
  ret void
}

define void @smpList_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpString_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([6 x i8]* @.str160, i32 0, i32 0))
  call void @smpString_init(%struct.obj_struct* sret %divider, i8* getelementptr inbounds ([2 x i8]* @.str103, i32 0, i32 0))
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
  call void @smpList_car(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i32 0, %struct.obj_struct* null)
  %18 = load i32* %1, align 4
  %19 = load %struct.obj_struct** %2, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %str2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i32 %18, %struct.obj_struct* %19)
  %20 = bitcast %struct.obj_struct* %5 to i8*
  %21 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %divider)
  %22 = bitcast %struct.obj_struct* %7 to i8*
  %23 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* %str2)
  %24 = load %struct.obj_struct** %ptr, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i32 0, i32 3
  %26 = load i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.smpPair_struct*
  %28 = getelementptr inbounds %struct.smpPair_struct* %27, i32 0, i32 1
  %29 = load %struct.obj_struct** %28, align 8
  store %struct.obj_struct* %29, %struct.obj_struct** %ptr, align 8
  br label %11

; <label>:30                                      ; preds = %11
  call void @smpString_init(%struct.obj_struct* sret %paren, i8* getelementptr inbounds ([2 x i8]* @.str104, i32 0, i32 0))
  %31 = bitcast %struct.obj_struct* %9 to i8*
  %32 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %10, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %paren)
  %33 = bitcast %struct.obj_struct* %agg.result to i8*
  %34 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  ret void
}

define void @smpList_each(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %list = alloca %struct.smpPair_struct*, align 8
  %code = alloca %struct.obj_struct, align 8
  %rest = alloca %struct.obj_struct*, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %11 = load %struct.smpType_struct** %10, align 8
  %12 = getelementptr inbounds %struct.smpType_struct* %11, i32 0, i32 1
  %13 = load i32* %12, align 4
  %14 = load i32* @smpType_id_nil, align 4
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
  %22 = load %struct.smpType_struct** %21, align 8
  %23 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %22, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

; <label>:25                                      ; preds = %18
  %26 = load %struct.obj_struct** %2, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i64 0
  %28 = getelementptr inbounds %struct.obj_struct* %27, i32 0, i32 2
  %29 = load %struct.smpType_struct** %28, align 8
  %30 = getelementptr inbounds %struct.smpType_struct* %29, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
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
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %40 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %41 = load i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.smpType_struct*
  %43 = load %struct.obj_struct** %2, align 8
  %44 = getelementptr inbounds %struct.obj_struct* %43, i64 0
  %45 = bitcast %struct.obj_struct* %5 to i8*
  %46 = bitcast %struct.obj_struct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %42, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %100

; <label>:47                                      ; preds = %18
  %48 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %49 = load i8** %48, align 8
  %50 = bitcast i8* %49 to %struct.smpPair_struct*
  store %struct.smpPair_struct* %50, %struct.smpPair_struct** %list, align 8
  br label %51

; <label>:51                                      ; preds = %97, %47
  %52 = load %struct.smpPair_struct** %list, align 8
  %53 = icmp ne %struct.smpPair_struct* %52, null
  br i1 %53, label %54, label %98

; <label>:54                                      ; preds = %51
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([7 x i8]* @.str98, i32 0, i32 0))
  %55 = load %struct.obj_struct** %2, align 8
  %56 = getelementptr inbounds %struct.obj_struct* %55, i64 0
  %57 = bitcast %struct.obj_struct* %7 to i8*
  %58 = bitcast %struct.obj_struct* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  %59 = load %struct.smpPair_struct** %list, align 8
  %60 = getelementptr inbounds %struct.smpPair_struct* %59, i32 0, i32 0
  call void @smpFunction_call(%struct.obj_struct* sret %code, %struct.obj_struct* byval %6, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* %60)
  %61 = getelementptr inbounds %struct.obj_struct* %code, i32 0, i32 2
  %62 = load %struct.smpType_struct** %61, align 8
  %63 = getelementptr inbounds %struct.smpType_struct* %62, i32 0, i32 0
  %64 = load i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

; <label>:67                                      ; preds = %54
  %68 = bitcast %struct.obj_struct* %agg.result to i8*
  %69 = bitcast %struct.obj_struct* %code to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  br label %100

; <label>:70                                      ; preds = %54
  %71 = load %struct.smpPair_struct** %list, align 8
  %72 = getelementptr inbounds %struct.smpPair_struct* %71, i32 0, i32 1
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
  %80 = load %struct.smpType_struct** %79, align 8
  %81 = getelementptr inbounds %struct.smpType_struct* %80, i32 0, i32 1
  %82 = load i32* %81, align 4
  %83 = load i32* @smpType_id_list, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

; <label>:85                                      ; preds = %77
  %86 = load %struct.obj_struct** %rest, align 8
  %87 = getelementptr inbounds %struct.obj_struct* %86, i32 0, i32 3
  %88 = load i8** %87, align 8
  %89 = bitcast i8* %88 to %struct.smpPair_struct*
  store %struct.smpPair_struct* %89, %struct.smpPair_struct** %list, align 8
  br label %96

; <label>:90                                      ; preds = %77
  %91 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %92 = load %struct.smpType_struct** %91, align 8
  %93 = load %struct.obj_struct** %rest, align 8
  %94 = bitcast %struct.obj_struct* %9 to i8*
  %95 = bitcast %struct.obj_struct* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %8, %struct.smpType_struct* %92, %struct.obj_struct* byval %9)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %8)
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

define void @smpList_get(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = load %struct.smpType_struct** %10, align 8
  %12 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %11, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

; <label>:14                                      ; preds = %0
  %15 = load %struct.obj_struct** %2, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %15, i64 0
  %17 = getelementptr inbounds %struct.obj_struct* %16, i32 0, i32 2
  %18 = load %struct.smpType_struct** %17, align 8
  %19 = getelementptr inbounds %struct.smpType_struct* %18, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
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
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0))
  %29 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %30 = load i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.smpType_struct*
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %5 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* %31, %struct.obj_struct* byval %5)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %45

; <label>:36                                      ; preds = %0
  %37 = load %struct.obj_struct** %2, align 8
  %38 = getelementptr inbounds %struct.obj_struct* %37, i64 0
  %39 = bitcast %struct.obj_struct* %6 to i8*
  %40 = bitcast %struct.obj_struct* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  %41 = call i64 @smpInteger_to_clong(%struct.obj_struct* byval %6)
  store i64 %41, i64* %index, align 8
  %42 = bitcast %struct.obj_struct* %7 to i8*
  %43 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  %44 = load i64* %index, align 8
  call void @smpList_get_clong(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %7, i64 %44)
  br label %45

; <label>:45                                      ; preds = %36, %28, %23
  ret void
}

define void @smpList_get_clong(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i64 %index) nounwind {
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
  %18 = bitcast i8* %17 to %struct.smpPair_struct*
  %19 = getelementptr inbounds %struct.smpPair_struct* %18, i32 0, i32 1
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
  %27 = load %struct.smpType_struct** %26, align 8
  %28 = getelementptr inbounds %struct.smpType_struct* %27, i32 0, i32 1
  %29 = load i32* %28, align 4
  %30 = load i32* @smpType_id_list, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %24
  %35 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %36 = load %struct.smpType_struct** %35, align 8
  %37 = load %struct.obj_struct** %ptr, align 8
  %38 = bitcast %struct.obj_struct* %3 to i8*
  %39 = bitcast %struct.obj_struct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %2, %struct.smpType_struct* %36, %struct.obj_struct* byval %3)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
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
  %52 = bitcast i8* %51 to %struct.smpPair_struct*
  %53 = getelementptr inbounds %struct.smpPair_struct* %52, i32 0, i32 0
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

define i32 @smpListBuffer_create_class() nounwind {
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
  %10 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([11 x i8]* @.str161, i32 0, i32 0), %struct.smpType_struct* @smpType_nil, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %listbuf, i8* getelementptr inbounds ([11 x i8]* @.str161, i32 0, i32 0))
  %11 = bitcast %struct.obj_struct* %1 to i8*
  %12 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpListBuffer_add_now, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str94, i32 0, i32 0), %struct.obj_struct* byval %2)
  %13 = bitcast %struct.obj_struct* %4 to i8*
  %14 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpListBuffer_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %5)
  %15 = bitcast %struct.obj_struct* %7 to i8*
  %16 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpListBuffer_to_list, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str162, i32 0, i32 0), %struct.obj_struct* byval %8)
  ret i32 0
}

define void @smpListBuffer_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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

define void @smpListBuffer_init(%struct.obj_struct* sret %agg.result) nounwind {
  %lb = alloca %struct.listbuf_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = getelementptr inbounds %struct.listbuf_struct* %lb, i32 0, i32 0
  %3 = bitcast %struct.obj_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %4 = getelementptr inbounds %struct.listbuf_struct* %lb, i32 0, i32 1
  %5 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([11 x i8]* @.str161, i32 0, i32 0))
  %6 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %7 = load i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* %8)
  %9 = call i8* @smp_malloc(i64 64)
  %10 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %9, i8** %10, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.listbuf_struct*
  %14 = bitcast %struct.listbuf_struct* %13 to i8*
  %15 = bitcast %struct.listbuf_struct* %lb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 64, i32 8, i1 false)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  ret void
}

define i32 @smpNil_create_class() nounwind {
  %nilclass = alloca %struct.obj_struct, align 8
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
  call void @smp_getclass(%struct.obj_struct* sret %nilclass, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  %19 = bitcast %struct.obj_struct* %1 to i8*
  %20 = bitcast %struct.obj_struct* %nilclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpNil_car, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str156, i32 0, i32 0), %struct.obj_struct* byval %2)
  %21 = bitcast %struct.obj_struct* %4 to i8*
  %22 = bitcast %struct.obj_struct* %nilclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpNil_cdr, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str157, i32 0, i32 0), %struct.obj_struct* byval %5)
  %23 = bitcast %struct.obj_struct* %7 to i8*
  %24 = bitcast %struct.obj_struct* %nilclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpNil_emptyp, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str158, i32 0, i32 0), %struct.obj_struct* byval %8)
  %25 = bitcast %struct.obj_struct* %10 to i8*
  %26 = bitcast %struct.obj_struct* %nilclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpNil_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), %struct.obj_struct* byval %11)
  %27 = bitcast %struct.obj_struct* %13 to i8*
  %28 = bitcast %struct.obj_struct* %nilclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpNil_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %14)
  %29 = bitcast %struct.obj_struct* %16 to i8*
  %30 = bitcast %struct.obj_struct* %nilclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpNil_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %17)
  ret i32 0
}

define void @smpNil_car(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpNil_cdr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpNil_emptyp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpNil_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %3)
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %10)
  ret void
}

define void @smpNil_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpString_init(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([4 x i8]* @.str144, i32 0, i32 0))
  ret void
}

define void @smpNil_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpString_init(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([4 x i8]* @.str144, i32 0, i32 0))
  ret void
}

define i32 @smpNumber_create_class() nounwind {
  %number = alloca %struct.obj_struct, align 8
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
  %17 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %number, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %18 = bitcast %struct.obj_struct* %1 to i8*
  %19 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smpType_abstract_def(%struct.obj_struct* sret %2, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str64, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %20 = bitcast %struct.obj_struct* %3 to i8*
  %21 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smpType_abstract_def(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str65, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %22 = bitcast %struct.obj_struct* %5 to i8*
  %23 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smpType_abstract_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str66, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %24 = bitcast %struct.obj_struct* %7 to i8*
  %25 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smpType_abstract_def(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str67, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str115, i32 0, i32 0))
  %26 = bitcast %struct.obj_struct* %9 to i8*
  %27 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smpType_abstract_def(%struct.obj_struct* sret %10, %struct.obj_struct* byval %9, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str119, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  %28 = bitcast %struct.obj_struct* %11 to i8*
  %29 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smpType_abstract_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %11, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str120, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  %30 = bitcast %struct.obj_struct* %13 to i8*
  %31 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smpType_abstract_def(%struct.obj_struct* sret %14, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str121, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  %32 = bitcast %struct.obj_struct* %15 to i8*
  %33 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smpType_abstract_def(%struct.obj_struct* sret %16, %struct.obj_struct* byval %15, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str122, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  ret i32 0
}

define void @smpType_abstract_def(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i32 %scope, i8* %name, i32 %argc, ...) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %scope, i32* %1, align 4
  store i8* %name, i8** %2, align 8
  store i32 %argc, i32* %3, align 4
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = bitcast %struct.obj_struct* %4 to i8*
  %9 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load i32* %1, align 4
  %11 = load i8** %2, align 8
  %12 = load i32* %3, align 4
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpFunction_init_v(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smp_abstract_function, i32 %12, %struct.__va_list_tag* %13)
  call void @smpType_def(%struct.obj_struct* sret %res, %struct.obj_struct* byval %4, i32 %10, i8* %11, %struct.obj_struct* byval %5)
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  ret void
}

define i32 @smpPair_create_class() nounwind {
  %pair = alloca %struct.obj_struct, align 8
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
  call void @smp_getclass(%struct.obj_struct* sret %pair, i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0))
  %19 = bitcast %struct.obj_struct* %1 to i8*
  %20 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpPair_car, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str156, i32 0, i32 0), %struct.obj_struct* byval %2)
  %21 = bitcast %struct.obj_struct* %4 to i8*
  %22 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpPair_cdr, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str157, i32 0, i32 0), %struct.obj_struct* byval %5)
  %23 = bitcast %struct.obj_struct* %7 to i8*
  %24 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpPair_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %8)
  %25 = bitcast %struct.obj_struct* %10 to i8*
  %26 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpPair_gc_mark, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %11)
  %27 = bitcast %struct.obj_struct* %13 to i8*
  %28 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpPair_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %14)
  %29 = bitcast %struct.obj_struct* %16 to i8*
  %30 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpPair_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %17)
  ret i32 0
}

define void @smpPair_car(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpPair_struct*
  %6 = getelementptr inbounds %struct.smpPair_struct* %5, i32 0, i32 0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  %8 = bitcast %struct.obj_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  ret void
}

define void @smpPair_cdr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %cdr = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpPair_struct*
  %6 = getelementptr inbounds %struct.smpPair_struct* %5, i32 0, i32 1
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

define void @smpPair_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpPair_struct*
  %6 = getelementptr inbounds %struct.smpPair_struct* %5, i32 0, i32 1
  %7 = load %struct.obj_struct** %6, align 8
  %8 = bitcast %struct.obj_struct* %7 to i8*
  call void @smp_free(i8* %8)
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpPair_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpPair_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smpPair_struct*
  %8 = bitcast %struct.smpPair_struct* %core to i8*
  %9 = bitcast %struct.smpPair_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 40, i32 8, i1 false)
  %10 = getelementptr inbounds %struct.smpPair_struct* %core, i32 0, i32 0
  %11 = bitcast %struct.obj_struct* %3 to i8*
  %12 = bitcast %struct.obj_struct* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  %13 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  %14 = getelementptr inbounds %struct.smpPair_struct* %core, i32 0, i32 1
  %15 = load %struct.obj_struct** %14, align 8
  %16 = icmp ne %struct.obj_struct* %15, null
  br i1 %16, label %17, label %23

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.smpPair_struct* %core, i32 0, i32 1
  %19 = load %struct.obj_struct** %18, align 8
  %20 = bitcast %struct.obj_struct* %4 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %4)
  br label %23

; <label>:23                                      ; preds = %17, %0
  %24 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpPair_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smpPair_struct*
  %8 = getelementptr inbounds %struct.smpPair_struct* %7, i32 0, i32 0
  %9 = bitcast %struct.obj_struct* %3 to i8*
  %10 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smpPair_struct*
  %14 = getelementptr inbounds %struct.smpPair_struct* %13, i32 0, i32 1
  %15 = load %struct.obj_struct** %14, align 8
  %16 = icmp ne %struct.obj_struct* %15, null
  br i1 %16, label %17, label %25

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.smpPair_struct*
  %21 = getelementptr inbounds %struct.smpPair_struct* %20, i32 0, i32 1
  %22 = load %struct.obj_struct** %21, align 8
  %23 = bitcast %struct.obj_struct* %4 to i8*
  %24 = bitcast %struct.obj_struct* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  br label %27

; <label>:25                                      ; preds = %0
  %26 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %27

; <label>:27                                      ; preds = %25, %17
  call void (%struct.obj_struct*, i8*, ...)* @smpGlobal_sprintf(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([8 x i8]* @.str163, i32 0, i32 0), %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  ret void
}

define void @smpPair_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smpPair_struct*
  %8 = getelementptr inbounds %struct.smpPair_struct* %7, i32 0, i32 0
  %9 = bitcast %struct.obj_struct* %3 to i8*
  %10 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smpPair_struct*
  %14 = getelementptr inbounds %struct.smpPair_struct* %13, i32 0, i32 1
  %15 = load %struct.obj_struct** %14, align 8
  %16 = icmp ne %struct.obj_struct* %15, null
  br i1 %16, label %17, label %25

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.smpPair_struct*
  %21 = getelementptr inbounds %struct.smpPair_struct* %20, i32 0, i32 1
  %22 = load %struct.obj_struct** %21, align 8
  %23 = bitcast %struct.obj_struct* %4 to i8*
  %24 = bitcast %struct.obj_struct* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  br label %27

; <label>:25                                      ; preds = %0
  %26 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %27

; <label>:27                                      ; preds = %25, %17
  call void (%struct.obj_struct*, i8*, ...)* @smpGlobal_sprintf(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([8 x i8]* @.str164, i32 0, i32 0), %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  ret void
}

define void @smpPair_set_car_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpPair_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpPair_struct*
  store %struct.smpPair_struct* %5, %struct.smpPair_struct** %core, align 8
  %6 = load %struct.smpPair_struct** %core, align 8
  %7 = getelementptr inbounds %struct.smpPair_struct* %6, i32 0, i32 0
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = bitcast %struct.obj_struct* %7 to i8*
  %11 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  %13 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  ret void
}

define i32 @smpRegex_create_class() nounwind {
  %regmatch = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([11 x i8]* @.str165, i32 0, i32 0), %struct.smpType_struct* @smpType_object, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %regmatch, i8* getelementptr inbounds ([11 x i8]* @.str165, i32 0, i32 0))
  %5 = getelementptr inbounds %struct.obj_struct* %regmatch, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smpType_struct*
  %8 = bitcast %struct.smpType_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smpType_struct* @smpType_regmatch to i8*), i8* %8, i64 64, i32 8, i1 false)
  %9 = bitcast %struct.obj_struct* %1 to i8*
  %10 = bitcast %struct.obj_struct* %regmatch to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpregmatch_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %2)
  ret i32 0
}

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
  %9 = load %0** %8, align 8
  %10 = bitcast %0* %9 to i8*
  call void @smp_free(i8* %10)
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpRegex_compile(%struct.obj_struct* sret %agg.result, %6* %compiled, %struct.obj_struct* byval %regex) nounwind {
  %1 = alloca %6*, align 8
  %2 = alloca %struct.obj_struct, align 8
  store %6* %compiled, %6** %1, align 8
  %3 = load %6** %1, align 8
  %4 = bitcast %struct.obj_struct* %2 to i8*
  %5 = bitcast %struct.obj_struct* %regex to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpRegex_compile_flags(%struct.obj_struct* sret %agg.result, %6* %3, %struct.obj_struct* byval %2, i32 1)
  ret void
}

define void @smpRegex_compile_flags(%struct.obj_struct* sret %agg.result, %6* %compiled, %struct.obj_struct* byval %regex, i32 %flags) nounwind {
  %1 = alloca %6*, align 8
  %2 = alloca i32, align 4
  store %6* %compiled, %6** %1, align 8
  store i32 %flags, i32* %2, align 4
  %3 = load %6** %1, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %regex, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpstrstruct*
  %7 = getelementptr inbounds %struct.smpstrstruct* %6, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = load i32* %2, align 4
  call void @smpRegex_compile_str_flags(%struct.obj_struct* sret %agg.result, %6* %3, i8* %8, i32 %9)
  ret void
}

define void @smpRegex_compile_str_flags(%struct.obj_struct* sret %agg.result, %6* %compiled, i8* %pattern, i32 %flags) nounwind {
  %1 = alloca %6*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %code = alloca i32, align 4
  store %6* %compiled, %6** %1, align 8
  store i8* %pattern, i8** %2, align 8
  store i32 %flags, i32* %3, align 4
  %4 = load %6** %1, align 8
  %5 = load i8** %2, align 8
  %6 = load i32* %3, align 4
  %7 = call i32 @"\01_regcomp"(%6* %4, i8* %5, i32 %6)
  store i32 %7, i32* %code, align 4
  %8 = load i8** %2, align 8
  %9 = load i32* %code, align 4
  call void @smpRegex_compile_handle_errors(%struct.obj_struct* sret %agg.result, i8* %8, i32 %9)
  ret void
}

define void @smpRegex_compile_str(%struct.obj_struct* sret %agg.result, %6* %compiled, i8* %pattern) nounwind {
  %1 = alloca %6*, align 8
  %2 = alloca i8*, align 8
  store %6* %compiled, %6** %1, align 8
  store i8* %pattern, i8** %2, align 8
  %3 = load %6** %1, align 8
  %4 = load i8** %2, align 8
  call void @smpRegex_compile_str_flags(%struct.obj_struct* sret %agg.result, %6* %3, i8* %4, i32 1)
  ret void
}

declare i32 @"\01_regcomp"(%6*, i8*, i32)

define void @smpRegex_compile_handle_errors(%struct.obj_struct* sret %agg.result, i8* %pattern, i32 %code) nounwind {
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
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %30 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([55 x i8]* @.str166, i32 0, i32 0), i8* %30)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %88

; <label>:31                                      ; preds = %0
  %32 = load i32* %2, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %36

; <label>:34                                      ; preds = %31
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %35 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %5, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([41 x i8]* @.str167, i32 0, i32 0), i8* %35)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %5)
  br label %88

; <label>:36                                      ; preds = %31
  %37 = load i32* %2, align 4
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %36
  call void @smp_getclass(%struct.obj_struct* sret %8, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %40 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %7, %struct.obj_struct* byval %8, i8* getelementptr inbounds ([97 x i8]* @.str168, i32 0, i32 0), i8* %40)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %7)
  br label %88

; <label>:41                                      ; preds = %36
  %42 = load i32* %2, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %41
  call void @smp_getclass(%struct.obj_struct* sret %10, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %45 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %9, %struct.obj_struct* byval %10, i8* getelementptr inbounds ([66 x i8]* @.str169, i32 0, i32 0), i8* %45)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %9)
  br label %88

; <label>:46                                      ; preds = %41
  %47 = load i32* %2, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %51

; <label>:49                                      ; preds = %46
  call void @smp_getclass(%struct.obj_struct* sret %12, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %50 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %11, %struct.obj_struct* byval %12, i8* getelementptr inbounds ([69 x i8]* @.str170, i32 0, i32 0), i8* %50)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %11)
  br label %88

; <label>:51                                      ; preds = %46
  %52 = load i32* %2, align 4
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %56

; <label>:54                                      ; preds = %51
  call void @smp_getclass(%struct.obj_struct* sret %14, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %55 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %13, %struct.obj_struct* byval %14, i8* getelementptr inbounds ([40 x i8]* @.str171, i32 0, i32 0), i8* %55)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %13)
  br label %88

; <label>:56                                      ; preds = %51
  %57 = load i32* %2, align 4
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %61

; <label>:59                                      ; preds = %56
  call void @smp_getclass(%struct.obj_struct* sret %16, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %60 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %15, %struct.obj_struct* byval %16, i8* getelementptr inbounds ([70 x i8]* @.str172, i32 0, i32 0), i8* %60)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %15)
  br label %88

; <label>:61                                      ; preds = %56
  %62 = load i32* %2, align 4
  %63 = icmp eq i32 %62, 7
  br i1 %63, label %64, label %66

; <label>:64                                      ; preds = %61
  call void @smp_getclass(%struct.obj_struct* sret %18, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %65 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %17, %struct.obj_struct* byval %18, i8* getelementptr inbounds ([56 x i8]* @.str173, i32 0, i32 0), i8* %65)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %17)
  br label %88

; <label>:66                                      ; preds = %61
  %67 = load i32* %2, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %66
  call void @smp_getclass(%struct.obj_struct* sret %20, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %70 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %19, %struct.obj_struct* byval %20, i8* getelementptr inbounds ([52 x i8]* @.str174, i32 0, i32 0), i8* %70)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %19)
  br label %88

; <label>:71                                      ; preds = %66
  %72 = load i32* %2, align 4
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %76

; <label>:74                                      ; preds = %71
  call void @smp_getclass(%struct.obj_struct* sret %22, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %75 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %21, %struct.obj_struct* byval %22, i8* getelementptr inbounds ([53 x i8]* @.str175, i32 0, i32 0), i8* %75)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %21)
  br label %88

; <label>:76                                      ; preds = %71
  %77 = load i32* %2, align 4
  %78 = icmp eq i32 %77, 11
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %76
  call void @smp_getclass(%struct.obj_struct* sret %24, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %80 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %23, %struct.obj_struct* byval %24, i8* getelementptr inbounds ([84 x i8]* @.str176, i32 0, i32 0), i8* %80)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %23)
  br label %88

; <label>:81                                      ; preds = %76
  %82 = load i32* %2, align 4
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %84, label %86

; <label>:84                                      ; preds = %81
  call void @smp_getclass(%struct.obj_struct* sret %26, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %85 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpException_init_fmt(%struct.obj_struct* sret %25, %struct.obj_struct* byval %26, i8* getelementptr inbounds ([59 x i8]* @.str177, i32 0, i32 0), i8* %85)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %25)
  br label %88

; <label>:86                                      ; preds = %81
  %87 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %88

; <label>:88                                      ; preds = %86, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29
  ret void
}

define void @smpregmatch_init(%struct.obj_struct* sret %agg.result, %0* %matches, i64 %length) nounwind {
  %1 = alloca %0*, align 8
  %2 = alloca i64, align 8
  %true_len = alloca i64, align 8
  %core = alloca %struct.smpregexmatch_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  store %0* %matches, %0** %1, align 8
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
  %9 = load %0** %1, align 8
  %10 = getelementptr inbounds %0* %9, i64 %8
  %11 = getelementptr inbounds %0* %10, i32 0, i32 0
  %12 = load i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %24

; <label>:14                                      ; preds = %7
  %15 = load i64* %true_len, align 8
  %16 = load %0** %1, align 8
  %17 = getelementptr inbounds %0* %16, i64 %15
  %18 = getelementptr inbounds %0* %17, i32 0, i32 1
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
  %35 = bitcast i8* %34 to %0*
  %36 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  store %0* %35, %0** %36, align 8
  %37 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %38 = load %0** %37, align 8
  %39 = bitcast %0* %38 to i8*
  %40 = call i64 @llvm.objectsize.i64(i8* %39, i1 false)
  %41 = icmp ne i64 %40, -1
  br i1 %41, label %42, label %56

; <label>:42                                      ; preds = %28
  %43 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %44 = load %0** %43, align 8
  %45 = bitcast %0* %44 to i8*
  %46 = load %0** %1, align 8
  %47 = bitcast %0* %46 to i8*
  %48 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 1
  %49 = load i64* %48, align 8
  %50 = mul i64 16, %49
  %51 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %52 = load %0** %51, align 8
  %53 = bitcast %0* %52 to i8*
  %54 = call i64 @llvm.objectsize.i64(i8* %53, i1 false)
  %55 = call i8* @__memcpy_chk(i8* %45, i8* %47, i64 %50, i64 %54)
  br label %66

; <label>:56                                      ; preds = %28
  %57 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %58 = load %0** %57, align 8
  %59 = bitcast %0* %58 to i8*
  %60 = load %0** %1, align 8
  %61 = bitcast %0* %60 to i8*
  %62 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 1
  %63 = load i64* %62, align 8
  %64 = mul i64 16, %63
  %65 = call i8* @__inline_memcpy_chk(i8* %59, i8* %61, i64 %64)
  br label %66

; <label>:66                                      ; preds = %56, %42
  %67 = phi i8* [ %55, %42 ], [ %65, %56 ]
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_regmatch)
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

define void @smpRegex_match(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %3)
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = bitcast %struct.obj_struct* %4 to i8*
  %11 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void @smpRegex_match_str(%struct.obj_struct* sret %agg.result, i8* %7, %struct.obj_struct* byval %4)
  ret void
}

define void @smpRegex_match_str(%struct.obj_struct* sret %agg.result, i8* %pattern, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %compiled = alloca %6*, align 8
  %obj_code = alloca %struct.obj_struct, align 8
  %length = alloca i64, align 8
  %5 = alloca i8*
  %code = alloca i32, align 4
  %res = alloca %struct.obj_struct, align 8
  %6 = alloca i32
  store i8* %pattern, i8** %1, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = call i32 @smpObject_instancep_cstr(%struct.smpType_struct* %8, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %13 = load %struct.smpType_struct** %12, align 8
  %14 = getelementptr inbounds %struct.smpType_struct* %13, i32 0, i32 0
  %15 = load i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %11
  %19 = bitcast %struct.obj_struct* %agg.result to i8*
  %20 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  br label %86

; <label>:21                                      ; preds = %11
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %22 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.smpType_struct*
  %25 = bitcast %struct.obj_struct* %4 to i8*
  %26 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %2, %struct.smpType_struct* %24, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %86

; <label>:27                                      ; preds = %0
  %28 = call i8* @smp_malloc(i64 32)
  %29 = bitcast i8* %28 to %6*
  store %6* %29, %6** %compiled, align 8
  %30 = load %6** %compiled, align 8
  %31 = load i8** %1, align 8
  call void @smpRegex_compile_str(%struct.obj_struct* sret %obj_code, %6* %30, i8* %31)
  %32 = getelementptr inbounds %struct.obj_struct* %obj_code, i32 0, i32 2
  %33 = load %struct.smpType_struct** %32, align 8
  %34 = getelementptr inbounds %struct.smpType_struct* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

; <label>:38                                      ; preds = %27
  %39 = load %6** %compiled, align 8
  %40 = bitcast %6* %39 to i8*
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
  %48 = bitcast i8* %47 to %0*
  %49 = bitcast %0* %48 to i8*
  %50 = call i64 @llvm.objectsize.i64(i8* %49, i1 false)
  %51 = icmp ne i64 %50, -1
  br i1 %51, label %52, label %59

; <label>:52                                      ; preds = %43
  %53 = bitcast %0* %48 to i8*
  %54 = load i64* %length, align 8
  %55 = mul i64 16, %54
  %56 = bitcast %0* %48 to i8*
  %57 = call i64 @llvm.objectsize.i64(i8* %56, i1 false)
  %58 = call i8* @__memset_chk(i8* %53, i32 0, i64 %55, i64 %57)
  br label %64

; <label>:59                                      ; preds = %43
  %60 = bitcast %0* %48 to i8*
  %61 = load i64* %length, align 8
  %62 = mul i64 16, %61
  %63 = call i8* @__inline_memset_chk(i8* %60, i32 0, i64 %62)
  br label %64

; <label>:64                                      ; preds = %59, %52
  %65 = phi i8* [ %58, %52 ], [ %63, %59 ]
  %66 = load %6** %compiled, align 8
  %67 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %68 = load i8** %67, align 8
  %69 = bitcast i8* %68 to %struct.smpstrstruct*
  %70 = getelementptr inbounds %struct.smpstrstruct* %69, i32 0, i32 0
  %71 = load i8** %70, align 8
  %72 = load i64* %length, align 8
  %73 = call i32 @regexec(%6* %66, i8* %71, i64 %72, %0* %48, i32 0)
  store i32 %73, i32* %code, align 4
  %74 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %75 = load i32* %code, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

; <label>:77                                      ; preds = %64
  %78 = load i64* %length, align 8
  call void @smpregmatch_init(%struct.obj_struct* sret %res, %0* %48, i64 %78)
  br label %79

; <label>:79                                      ; preds = %77, %64
  %80 = load %6** %compiled, align 8
  call void @regfree(%6* %80)
  %81 = load %6** %compiled, align 8
  %82 = bitcast %6* %81 to i8*
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

declare i32 @regexec(%6*, i8*, i64, %0*, i32)

declare void @regfree(%6*)

define i32 @smpRegex_matchp_cint(%struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpRegex_match(%struct.obj_struct* sret %match, %struct.obj_struct* byval %4, i32 %7, %struct.obj_struct* %8)
  %9 = getelementptr inbounds %struct.obj_struct* %match, i32 0, i32 2
  %10 = load %struct.smpType_struct** %9, align 8
  %11 = getelementptr inbounds %struct.smpType_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  store i32 -1, i32* %1
  br label %25

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.obj_struct* %match, i32 0, i32 2
  %18 = load %struct.smpType_struct** %17, align 8
  %19 = getelementptr inbounds %struct.smpType_struct* %18, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([10 x i8]* @.str41, i32 0, i32 0))
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

define i32 @smpstrcreate_class() nounwind {
  %strclass = alloca %struct.obj_struct, align 8
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
  call void @smp_getclass(%struct.obj_struct* sret %strclass, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %19 = bitcast %struct.obj_struct* %1 to i8*
  %20 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpString_add, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str64, i32 0, i32 0), %struct.obj_struct* byval %2)
  %21 = bitcast %struct.obj_struct* %4 to i8*
  %22 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpString_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %5)
  %23 = bitcast %struct.obj_struct* %7 to i8*
  %24 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpString_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), %struct.obj_struct* byval %8)
  %25 = bitcast %struct.obj_struct* %10 to i8*
  %26 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpString_reverse, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str178, i32 0, i32 0), %struct.obj_struct* byval %11)
  %27 = bitcast %struct.obj_struct* %13 to i8*
  %28 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpString_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %14)
  %29 = bitcast %struct.obj_struct* %16 to i8*
  %30 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpString_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %17)
  ret i32 0
}

define void @smpString_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpstrstruct*
  %6 = getelementptr inbounds %struct.smpstrstruct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smp_free(i8* %7)
  %8 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smpstrstruct*
  %11 = getelementptr inbounds %struct.smpstrstruct* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpString_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smpType_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smpType_struct* %8, i32 0, i32 0
  %10 = load i8** %9, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

; <label>:13                                      ; preds = %0
  %14 = bitcast %struct.obj_struct* %3 to i8*
  %15 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %3)
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %4 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %4)
  %22 = call i32 @strcmp(i8* %16, i8* %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %13
  %25 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %28

; <label>:26                                      ; preds = %13, %0
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %26, %24
  ret void
}

define void @smpString_reverse(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %str = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %other = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %res = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %3)
  store i8* %6, i8** %str, align 8
  %7 = load i8** %str, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = add i64 %8, 1
  %10 = mul i64 1, %9
  %11 = call i8* @smp_malloc(i64 %10)
  store i8* %11, i8** %other, align 8
  %12 = load i8** %str, align 8
  %13 = load i8** %str, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = getelementptr inbounds i8* %12, i64 %14
  store i8* %15, i8** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %21, %0
  %17 = load i8** %ptr, align 8
  %18 = getelementptr inbounds i8* %17, i32 -1
  store i8* %18, i8** %ptr, align 8
  %19 = load i8** %str, align 8
  %20 = icmp uge i8* %18, %19
  br i1 %20, label %21, label %29

; <label>:21                                      ; preds = %16
  %22 = load i8** %ptr, align 8
  %23 = load i8* %22
  %24 = load i32* %i, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4
  %26 = sext i32 %24 to i64
  %27 = load i8** %other, align 8
  %28 = getelementptr inbounds i8* %27, i64 %26
  store i8 %23, i8* %28
  br label %16

; <label>:29                                      ; preds = %16
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_string)
  %30 = load i8** %other, align 8
  %31 = call i32 @obj_init_str(%struct.obj_struct* %res, i8* %30)
  %32 = bitcast %struct.obj_struct* %agg.result to i8*
  %33 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  ret void
}

define void @smpString_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  %4 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  ret void
}

define void @smpString_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca i8*
  %i = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %4 = alloca i32
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %3
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %7 = load i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.smpstrstruct*
  %9 = getelementptr inbounds %struct.smpstrstruct* %8, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = mul i64 2, %10
  %12 = add i64 3, %11
  %13 = mul i64 1, %12
  %14 = alloca i8, i64 %13, align 16
  store i64 0, i64* %i, align 8
  %15 = load i64* %i, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %i, align 8
  %17 = getelementptr inbounds i8* %14, i64 %15
  store i8 34, i8* %17
  %18 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.smpstrstruct*
  %21 = getelementptr inbounds %struct.smpstrstruct* %20, i32 0, i32 0
  %22 = load i8** %21, align 8
  store i8* %22, i8** %ptr, align 8
  br label %23

; <label>:23                                      ; preds = %111, %0
  %24 = load i8** %ptr, align 8
  %25 = load i8* %24
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %114

; <label>:27                                      ; preds = %23
  %28 = load i8** %ptr, align 8
  %29 = load i8* %28
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 34
  br i1 %31, label %52, label %32

; <label>:32                                      ; preds = %27
  %33 = load i8** %ptr, align 8
  %34 = load i8* %33
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %52, label %37

; <label>:37                                      ; preds = %32
  %38 = load i8** %ptr, align 8
  %39 = load i8* %38
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %52, label %42

; <label>:42                                      ; preds = %37
  %43 = load i8** %ptr, align 8
  %44 = load i8* %43
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %52, label %47

; <label>:47                                      ; preds = %42
  %48 = load i8** %ptr, align 8
  %49 = load i8* %48
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 9
  br i1 %51, label %52, label %105

; <label>:52                                      ; preds = %47, %42, %37, %32, %27
  %53 = load i64* %i, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %i, align 8
  %55 = getelementptr inbounds i8* %14, i64 %53
  store i8 92, i8* %55
  %56 = load i8** %ptr, align 8
  %57 = load i8* %56
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 34
  br i1 %59, label %60, label %64

; <label>:60                                      ; preds = %52
  %61 = load i64* %i, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %i, align 8
  %63 = getelementptr inbounds i8* %14, i64 %61
  store i8 34, i8* %63
  br label %104

; <label>:64                                      ; preds = %52
  %65 = load i8** %ptr, align 8
  %66 = load i8* %65
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %69, label %73

; <label>:69                                      ; preds = %64
  %70 = load i64* %i, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %i, align 8
  %72 = getelementptr inbounds i8* %14, i64 %70
  store i8 92, i8* %72
  br label %103

; <label>:73                                      ; preds = %64
  %74 = load i8** %ptr, align 8
  %75 = load i8* %74
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %78, label %82

; <label>:78                                      ; preds = %73
  %79 = load i64* %i, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %i, align 8
  %81 = getelementptr inbounds i8* %14, i64 %79
  store i8 110, i8* %81
  br label %102

; <label>:82                                      ; preds = %73
  %83 = load i8** %ptr, align 8
  %84 = load i8* %83
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %91

; <label>:87                                      ; preds = %82
  %88 = load i64* %i, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %i, align 8
  %90 = getelementptr inbounds i8* %14, i64 %88
  store i8 114, i8* %90
  br label %101

; <label>:91                                      ; preds = %82
  %92 = load i8** %ptr, align 8
  %93 = load i8* %92
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 9
  br i1 %95, label %96, label %100

; <label>:96                                      ; preds = %91
  %97 = load i64* %i, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %i, align 8
  %99 = getelementptr inbounds i8* %14, i64 %97
  store i8 116, i8* %99
  br label %100

; <label>:100                                     ; preds = %96, %91
  br label %101

; <label>:101                                     ; preds = %100, %87
  br label %102

; <label>:102                                     ; preds = %101, %78
  br label %103

; <label>:103                                     ; preds = %102, %69
  br label %104

; <label>:104                                     ; preds = %103, %60
  br label %111

; <label>:105                                     ; preds = %47
  %106 = load i8** %ptr, align 8
  %107 = load i8* %106
  %108 = load i64* %i, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %i, align 8
  %110 = getelementptr inbounds i8* %14, i64 %108
  store i8 %107, i8* %110
  br label %111

; <label>:111                                     ; preds = %105, %104
  %112 = load i8** %ptr, align 8
  %113 = getelementptr inbounds i8* %112, i32 1
  store i8* %113, i8** %ptr, align 8
  br label %23

; <label>:114                                     ; preds = %23
  %115 = load i64* %i, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %i, align 8
  %117 = getelementptr inbounds i8* %14, i64 %115
  store i8 34, i8* %117
  %118 = load i64* %i, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %i, align 8
  %120 = getelementptr inbounds i8* %14, i64 %118
  store i8 0, i8* %120
  call void @smpString_init(%struct.obj_struct* sret %agg.result, i8* %14)
  store i32 1, i32* %4
  %121 = load i8** %3
  call void @llvm.stackrestore(i8* %121)
  ret void
}

define i32 @obj_init_str(%struct.obj_struct* %obj, i8* %str) nounwind {
  %1 = alloca %struct.obj_struct*, align 8
  %2 = alloca i8*, align 8
  %core = alloca %struct.smpstrstruct, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %1, align 8
  store i8* %str, i8** %2, align 8
  %3 = call i8* @smp_malloc(i64 16)
  %4 = load %struct.obj_struct** %1, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  store i8* %3, i8** %5, align 8
  %6 = load i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  store i64 %7, i64* %8, align 8
  %9 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = add i64 %10, 1
  %12 = mul i64 1, %11
  %13 = call i8* @smp_malloc(i64 %12)
  %14 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %16 = load i8** %15, align 8
  %17 = call i64 @llvm.objectsize.i64(i8* %16, i1 false)
  %18 = icmp ne i64 %17, -1
  br i1 %18, label %19, label %27

; <label>:19                                      ; preds = %0
  %20 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %21 = load i8** %20, align 8
  %22 = load i8** %2, align 8
  %23 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %24 = load i8** %23, align 8
  %25 = call i64 @llvm.objectsize.i64(i8* %24, i1 false)
  %26 = call i8* @__strcpy_chk(i8* %21, i8* %22, i64 %25)
  br label %32

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %29 = load i8** %28, align 8
  %30 = load i8** %2, align 8
  %31 = call i8* @__inline_strcpy_chk(i8* %29, i8* %30)
  br label %32

; <label>:32                                      ; preds = %27, %19
  %33 = phi i8* [ %26, %19 ], [ %31, %27 ]
  %34 = load %struct.obj_struct** %1, align 8
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.smpstrstruct*
  %38 = bitcast %struct.smpstrstruct* %37 to i8*
  %39 = bitcast %struct.smpstrstruct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  ret i32 0
}

define i32 @smpString_equalp_cstr(%struct.obj_struct* byval %obj, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i8* %str, i8** %1, align 8
  %3 = bitcast %struct.obj_struct* %2 to i8*
  %4 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  %5 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %2)
  %6 = load i8** %1, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

define void @smpString_init_length(%struct.obj_struct* sret %agg.result, i8* %str, i64 %length) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %res = alloca %struct.obj_struct, align 8
  %str_len = alloca i64, align 8
  %core = alloca %struct.smpstrstruct, align 8
  store i8* %str, i8** %1, align 8
  store i64 %length, i64* %2, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* @smpType_string)
  %3 = call i8* @smp_malloc(i64 16)
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %3, i8** %4, align 8
  %5 = load i8** %1, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %str_len, align 8
  %7 = load i64* %str_len, align 8
  %8 = load i64* %2, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %0
  %11 = load i64* %str_len, align 8
  store i64 %11, i64* %2, align 8
  br label %12

; <label>:12                                      ; preds = %10, %0
  %13 = load i64* %2, align 8
  %14 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 1, %17
  %19 = call i8* @smp_malloc(i64 %18)
  %20 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = call i64 @llvm.objectsize.i64(i8* %22, i1 false)
  %24 = icmp ne i64 %23, -1
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %12
  %26 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %27 = load i8** %26, align 8
  %28 = load i8** %1, align 8
  %29 = load i64* %2, align 8
  %30 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = call i64 @llvm.objectsize.i64(i8* %31, i1 false)
  %33 = call i8* @__strncpy_chk(i8* %27, i8* %28, i64 %29, i64 %32)
  br label %40

; <label>:34                                      ; preds = %12
  %35 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %36 = load i8** %35, align 8
  %37 = load i8** %1, align 8
  %38 = load i64* %2, align 8
  %39 = call i8* @__inline_strncpy_chk(i8* %36, i8* %37, i64 %38)
  br label %40

; <label>:40                                      ; preds = %34, %25
  %41 = phi i8* [ %33, %25 ], [ %39, %34 ]
  %42 = load i64* %2, align 8
  %43 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %44 = load i8** %43, align 8
  %45 = getelementptr inbounds i8* %44, i64 %42
  store i8 0, i8* %45
  %46 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %47 = load i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.smpstrstruct*
  %49 = bitcast %struct.smpstrstruct* %48 to i8*
  %50 = bitcast %struct.smpstrstruct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 8, i1 false)
  %51 = bitcast %struct.obj_struct* %agg.result to i8*
  %52 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 32, i32 8, i1 false)
  ret void
}

declare i8* @__strncpy_chk(i8*, i8*, i64, i64) nounwind

define internal i8* @__inline_strncpy_chk(i8* noalias %__dest, i8* noalias %__src, i64 %__len) nounwind inlinehint {
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
  %9 = call i8* @__strncpy_chk(i8* %4, i8* %5, i64 %6, i64 %8)
  ret i8* %9
}

define void @smpstrsubstring(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %start, i32 %length) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %str = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %copy = alloca i8*, align 8
  store i32 %start, i32* %1, align 4
  store i32 %length, i32* %2, align 4
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %3)
  store i8* %6, i8** %str, align 8
  %7 = load i32* %1, align 4
  %8 = load i32* %2, align 4
  %9 = add nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = load i8** %str, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  %15 = load i8** %str, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = load i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

; <label>:21                                      ; preds = %14, %0
  %22 = load i32* %2, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  call void @smpString_init(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([1 x i8]* @.str114, i32 0, i32 0))
  br label %52

; <label>:25                                      ; preds = %21
  %26 = load i32* %2, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 1, %28
  %30 = call i8* @smp_malloc(i64 %29)
  store i8* %30, i8** %copy, align 8
  %31 = load i8** %copy, align 8
  %32 = call i64 @llvm.objectsize.i64(i8* %31, i1 false)
  %33 = icmp ne i64 %32, -1
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %25
  %35 = load i8** %copy, align 8
  %36 = load i8** %str, align 8
  %37 = load i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8* %36, i64 %38
  %40 = load i8** %copy, align 8
  %41 = call i64 @llvm.objectsize.i64(i8* %40, i1 false)
  %42 = call i8* @__strcpy_chk(i8* %35, i8* %39, i64 %41)
  br label %50

; <label>:43                                      ; preds = %25
  %44 = load i8** %copy, align 8
  %45 = load i8** %str, align 8
  %46 = load i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8* %45, i64 %47
  %49 = call i8* @__inline_strcpy_chk(i8* %44, i8* %48)
  br label %50

; <label>:50                                      ; preds = %43, %34
  %51 = phi i8* [ %42, %34 ], [ %49, %43 ]
  call void @smpString_init_ref(%struct.obj_struct* sret %agg.result, i8** %copy)
  br label %52

; <label>:52                                      ; preds = %50, %24
  ret void
}

define i32 @smpSymbol_create_class() nounwind {
  %symbol = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = call i32 @smpGlobal_class(i8* getelementptr inbounds ([7 x i8]* @.str179, i32 0, i32 0), %struct.smpType_struct* @smpType_string, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %symbol, i8* getelementptr inbounds ([7 x i8]* @.str179, i32 0, i32 0))
  %8 = bitcast %struct.obj_struct* %1 to i8*
  %9 = bitcast %struct.obj_struct* %symbol to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpSymbol_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %2)
  %10 = bitcast %struct.obj_struct* %4 to i8*
  %11 = bitcast %struct.obj_struct* %symbol to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpSymbol_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), %struct.obj_struct* byval %5)
  ret i32 0
}

define void @smpSymbol_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpstrstruct*
  %6 = getelementptr inbounds %struct.smpstrstruct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smpString_init(%struct.obj_struct* sret %agg.result, i8* %7)
  ret void
}

define void @smpSymbol_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %3
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %7 = load i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.smpstrstruct*
  %9 = getelementptr inbounds %struct.smpstrstruct* %8, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = add i64 %10, 2
  %12 = mul i64 1, %11
  %13 = alloca i8, i64 %12, align 16
  %14 = getelementptr inbounds i8* %13, i64 0
  store i8 96, i8* %14
  %15 = getelementptr inbounds i8* %13, i64 1
  %16 = call i64 @llvm.objectsize.i64(i8* %15, i1 false)
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds i8* %13, i64 1
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.smpstrstruct*
  %23 = getelementptr inbounds %struct.smpstrstruct* %22, i32 0, i32 0
  %24 = load i8** %23, align 8
  %25 = getelementptr inbounds i8* %13, i64 1
  %26 = call i64 @llvm.objectsize.i64(i8* %25, i1 false)
  %27 = call i8* @__strcpy_chk(i8* %19, i8* %24, i64 %26)
  br label %36

; <label>:28                                      ; preds = %0
  %29 = getelementptr inbounds i8* %13, i64 1
  %30 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %31 = load i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.smpstrstruct*
  %33 = getelementptr inbounds %struct.smpstrstruct* %32, i32 0, i32 0
  %34 = load i8** %33, align 8
  %35 = call i8* @__inline_strcpy_chk(i8* %29, i8* %34)
  br label %36

; <label>:36                                      ; preds = %28, %18
  %37 = phi i8* [ %27, %18 ], [ %35, %28 ]
  call void @smpString_init(%struct.obj_struct* sret %agg.result, i8* %13)
  store i32 1, i32* %4
  %38 = load i8** %3
  call void @llvm.stackrestore(i8* %38)
  ret void
}

define void @smpSymbol_init(%struct.obj_struct* sret %agg.result, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %core = alloca %struct.smpstrstruct, align 8
  store i8* %str, i8** %1, align 8
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([7 x i8]* @.str179, i32 0, i32 0))
  %3 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpType_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smpType_struct* %5)
  %6 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %7 = load %struct.smpType_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smpType_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = bitcast %struct.obj_struct* %agg.result to i8*
  %14 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %51

; <label>:15                                      ; preds = %0
  %16 = load i8** %1, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = add i64 %20, 1
  %22 = mul i64 1, %21
  %23 = call i8* @smp_malloc(i64 %22)
  %24 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %26 = load i8** %25, align 8
  %27 = call i64 @llvm.objectsize.i64(i8* %26, i1 false)
  %28 = icmp ne i64 %27, -1
  br i1 %28, label %29, label %37

; <label>:29                                      ; preds = %15
  %30 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = load i8** %1, align 8
  %33 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %34 = load i8** %33, align 8
  %35 = call i64 @llvm.objectsize.i64(i8* %34, i1 false)
  %36 = call i8* @__strcpy_chk(i8* %31, i8* %32, i64 %35)
  br label %42

; <label>:37                                      ; preds = %15
  %38 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %39 = load i8** %38, align 8
  %40 = load i8** %1, align 8
  %41 = call i8* @__inline_strcpy_chk(i8* %39, i8* %40)
  br label %42

; <label>:42                                      ; preds = %37, %29
  %43 = phi i8* [ %36, %29 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %45 = load i8** %44, align 8
  %46 = bitcast i8* %45 to %struct.smpstrstruct*
  %47 = bitcast %struct.smpstrstruct* %46 to i8*
  %48 = bitcast %struct.smpstrstruct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false)
  %49 = bitcast %struct.obj_struct* %agg.result to i8*
  %50 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  br label %51

; <label>:51                                      ; preds = %42, %12
  ret void
}

define i8* @smpSymbol_to_cstr(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.smpstrstruct*
  %4 = getelementptr inbounds %struct.smpstrstruct* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  ret i8* %5
}

define i32 @smpThrown_create_class() nounwind {
  %thrown = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  call void @smp_getclass(%struct.obj_struct* sret %thrown, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %7 = bitcast %struct.obj_struct* %1 to i8*
  %8 = bitcast %struct.obj_struct* %thrown to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpThrown_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %2)
  %9 = bitcast %struct.obj_struct* %4 to i8*
  %10 = bitcast %struct.obj_struct* %thrown to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpThrown_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %5)
  ret i32 0
}

define void @smpThrown_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %23, %0
  %5 = load i64* %i, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %7 = load i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.smpThrown_struct*
  %9 = getelementptr inbounds %struct.smpThrown_struct* %8, i32 0, i32 2
  %10 = load i64* %9, align 8
  %11 = icmp ult i64 %5, %10
  br i1 %11, label %12, label %26

; <label>:12                                      ; preds = %4
  %13 = load i64* %i, align 8
  %14 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %15 = load i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.smpThrown_struct*
  %17 = getelementptr inbounds %struct.smpThrown_struct* %16, i32 0, i32 1
  %18 = load %struct.obj_struct** %17, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 %13
  %20 = bitcast %struct.obj_struct* %3 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  br label %23

; <label>:23                                      ; preds = %12
  %24 = load i64* %i, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %i, align 8
  br label %4

; <label>:26                                      ; preds = %4
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpThrown_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %exc_str = alloca %struct.obj_struct, align 8
  %divider = alloca %struct.obj_struct, align 8
  %i = alloca i64, align 8
  %new_str = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %str = alloca i8*, align 8
  %8 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpString_init(%struct.obj_struct* sret %exc_str, i8* getelementptr inbounds ([1 x i8]* @.str114, i32 0, i32 0))
  %9 = getelementptr inbounds %struct.obj_struct* %exc_str, i32 0, i32 2
  %10 = load %struct.smpType_struct** %9, align 8
  %11 = getelementptr inbounds %struct.smpType_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %0
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %83

; <label>:18                                      ; preds = %0
  call void @smpString_init(%struct.obj_struct* sret %divider, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %19 = getelementptr inbounds %struct.obj_struct* %divider, i32 0, i32 2
  %20 = load %struct.smpType_struct** %19, align 8
  %21 = getelementptr inbounds %struct.smpType_struct* %20, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %18
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  %27 = bitcast %struct.obj_struct* %divider to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  br label %83

; <label>:28                                      ; preds = %18
  store i64 0, i64* %i, align 8
  br label %29

; <label>:29                                      ; preds = %75, %28
  %30 = load i64* %i, align 8
  %31 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %32 = load i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.smpThrown_struct*
  %34 = getelementptr inbounds %struct.smpThrown_struct* %33, i32 0, i32 2
  %35 = load i64* %34, align 8
  %36 = icmp ult i64 %30, %35
  br i1 %36, label %37, label %78

; <label>:37                                      ; preds = %29
  %38 = load i64* %i, align 8
  %39 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %40 = load i8** %39, align 8
  %41 = bitcast i8* %40 to %struct.smpThrown_struct*
  %42 = getelementptr inbounds %struct.smpThrown_struct* %41, i32 0, i32 1
  %43 = load %struct.obj_struct** %42, align 8
  %44 = getelementptr inbounds %struct.obj_struct* %43, i64 %38
  %45 = bitcast %struct.obj_struct* %3 to i8*
  %46 = bitcast %struct.obj_struct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void @smpObject_funcall(%struct.obj_struct* sret %new_str, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %47 = getelementptr inbounds %struct.obj_struct* %new_str, i32 0, i32 2
  %48 = load %struct.smpType_struct** %47, align 8
  %49 = getelementptr inbounds %struct.smpType_struct* %48, i32 0, i32 0
  %50 = load i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %37
  %54 = bitcast %struct.obj_struct* %agg.result to i8*
  %55 = bitcast %struct.obj_struct* %new_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  br label %83

; <label>:56                                      ; preds = %37
  %57 = load i64* %i, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %62

; <label>:59                                      ; preds = %56
  %60 = bitcast %struct.obj_struct* %4 to i8*
  %61 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %divider)
  br label %62

; <label>:62                                      ; preds = %59, %56
  %63 = bitcast %struct.obj_struct* %6 to i8*
  %64 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 32, i32 8, i1 false)
  call void @smpString_add_now(%struct.obj_struct* sret %7, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %new_str)
  %65 = getelementptr inbounds %struct.obj_struct* %exc_str, i32 0, i32 2
  %66 = load %struct.smpType_struct** %65, align 8
  %67 = getelementptr inbounds %struct.smpType_struct* %66, i32 0, i32 0
  %68 = load i8** %67, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

; <label>:71                                      ; preds = %62
  %72 = bitcast %struct.obj_struct* %agg.result to i8*
  %73 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 32, i32 8, i1 false)
  br label %83

; <label>:74                                      ; preds = %62
  br label %75

; <label>:75                                      ; preds = %74
  %76 = load i64* %i, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %i, align 8
  br label %29

; <label>:78                                      ; preds = %29
  %79 = bitcast %struct.obj_struct* %8 to i8*
  %80 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  %81 = call i8* @smpString_to_cstr(%struct.obj_struct* byval %8)
  %82 = call i32 (i8**, i8*, ...)* @asprintf(i8** %str, i8* getelementptr inbounds ([13 x i8]* @.str180, i32 0, i32 0), i8* %81)
  call void @smpString_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  br label %83

; <label>:83                                      ; preds = %78, %71, %53, %25, %15
  ret void
}

define void @smpThrown_add_exception_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %obj, %struct.obj_struct* byval %exc) nounwind {
  %1 = alloca %struct.obj_struct*, align 8
  %2 = alloca %struct.obj_struct, align 8
  %core = alloca %struct.smpThrown_struct*, align 8
  %other_core = alloca %struct.smpThrown_struct, align 8
  %old_length = alloca i64, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %1, align 8
  %3 = load %struct.obj_struct** %1, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 2
  %5 = load %struct.smpType_struct** %4, align 8
  %6 = getelementptr inbounds %struct.smpType_struct* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = load i32* @smpType_id_nil, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %0
  %11 = load %struct.obj_struct** %1, align 8
  %12 = bitcast %struct.obj_struct* %2 to i8*
  %13 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  call void @smpThrown_init(%struct.obj_struct* sret %11, i32 0, %struct.obj_struct* byval %2)
  %14 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %127

; <label>:15                                      ; preds = %0
  %16 = load %struct.obj_struct** %1, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %16, i32 0, i32 3
  %18 = load i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.smpThrown_struct*
  store %struct.smpThrown_struct* %19, %struct.smpThrown_struct** %core, align 8
  %20 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 2
  %21 = load %struct.smpType_struct** %20, align 8
  %22 = getelementptr inbounds %struct.smpType_struct* %21, i32 0, i32 0
  %23 = load i8** %22, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %98

; <label>:26                                      ; preds = %15
  %27 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.smpThrown_struct*
  %30 = bitcast %struct.smpThrown_struct* %other_core to i8*
  %31 = bitcast %struct.smpThrown_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 24, i32 8, i1 false)
  %32 = load %struct.smpThrown_struct** %core, align 8
  %33 = getelementptr inbounds %struct.smpThrown_struct* %32, i32 0, i32 2
  %34 = load i64* %33, align 8
  store i64 %34, i64* %old_length, align 8
  %35 = getelementptr inbounds %struct.smpThrown_struct* %other_core, i32 0, i32 2
  %36 = load i64* %35, align 8
  %37 = load %struct.smpThrown_struct** %core, align 8
  %38 = getelementptr inbounds %struct.smpThrown_struct* %37, i32 0, i32 2
  %39 = load i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.smpThrown_struct** %core, align 8
  %42 = getelementptr inbounds %struct.smpThrown_struct* %41, i32 0, i32 1
  %43 = load %struct.obj_struct** %42, align 8
  %44 = bitcast %struct.obj_struct* %43 to i8*
  %45 = load %struct.smpThrown_struct** %core, align 8
  %46 = getelementptr inbounds %struct.smpThrown_struct* %45, i32 0, i32 2
  %47 = load i64* %46, align 8
  %48 = mul i64 32, %47
  %49 = call i8* @smp_realloc(i8* %44, i64 %48)
  %50 = bitcast i8* %49 to %struct.obj_struct*
  %51 = load %struct.smpThrown_struct** %core, align 8
  %52 = getelementptr inbounds %struct.smpThrown_struct* %51, i32 0, i32 1
  store %struct.obj_struct* %50, %struct.obj_struct** %52, align 8
  %53 = load %struct.smpThrown_struct** %core, align 8
  %54 = getelementptr inbounds %struct.smpThrown_struct* %53, i32 0, i32 1
  %55 = load %struct.obj_struct** %54, align 8
  %56 = load i64* %old_length, align 8
  %57 = getelementptr inbounds %struct.obj_struct* %55, i64 %56
  %58 = bitcast %struct.obj_struct* %57 to i8*
  %59 = call i64 @llvm.objectsize.i64(i8* %58, i1 false)
  %60 = icmp ne i64 %59, -1
  br i1 %60, label %61, label %82

; <label>:61                                      ; preds = %26
  %62 = load %struct.smpThrown_struct** %core, align 8
  %63 = getelementptr inbounds %struct.smpThrown_struct* %62, i32 0, i32 1
  %64 = load %struct.obj_struct** %63, align 8
  %65 = load i64* %old_length, align 8
  %66 = getelementptr inbounds %struct.obj_struct* %64, i64 %65
  %67 = bitcast %struct.obj_struct* %66 to i8*
  %68 = getelementptr inbounds %struct.smpThrown_struct* %other_core, i32 0, i32 1
  %69 = load %struct.obj_struct** %68, align 8
  %70 = bitcast %struct.obj_struct* %69 to i8*
  %71 = getelementptr inbounds %struct.smpThrown_struct* %other_core, i32 0, i32 2
  %72 = load i64* %71, align 8
  %73 = mul i64 32, %72
  %74 = load %struct.smpThrown_struct** %core, align 8
  %75 = getelementptr inbounds %struct.smpThrown_struct* %74, i32 0, i32 1
  %76 = load %struct.obj_struct** %75, align 8
  %77 = load i64* %old_length, align 8
  %78 = getelementptr inbounds %struct.obj_struct* %76, i64 %77
  %79 = bitcast %struct.obj_struct* %78 to i8*
  %80 = call i64 @llvm.objectsize.i64(i8* %79, i1 false)
  %81 = call i8* @__memcpy_chk(i8* %67, i8* %70, i64 %73, i64 %80)
  br label %96

; <label>:82                                      ; preds = %26
  %83 = load %struct.smpThrown_struct** %core, align 8
  %84 = getelementptr inbounds %struct.smpThrown_struct* %83, i32 0, i32 1
  %85 = load %struct.obj_struct** %84, align 8
  %86 = load i64* %old_length, align 8
  %87 = getelementptr inbounds %struct.obj_struct* %85, i64 %86
  %88 = bitcast %struct.obj_struct* %87 to i8*
  %89 = getelementptr inbounds %struct.smpThrown_struct* %other_core, i32 0, i32 1
  %90 = load %struct.obj_struct** %89, align 8
  %91 = bitcast %struct.obj_struct* %90 to i8*
  %92 = getelementptr inbounds %struct.smpThrown_struct* %other_core, i32 0, i32 2
  %93 = load i64* %92, align 8
  %94 = mul i64 32, %93
  %95 = call i8* @__inline_memcpy_chk(i8* %88, i8* %91, i64 %94)
  br label %96

; <label>:96                                      ; preds = %82, %61
  %97 = phi i8* [ %81, %61 ], [ %95, %82 ]
  br label %125

; <label>:98                                      ; preds = %15
  %99 = load %struct.smpThrown_struct** %core, align 8
  %100 = getelementptr inbounds %struct.smpThrown_struct* %99, i32 0, i32 2
  %101 = load i64* %100, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.smpThrown_struct** %core, align 8
  %104 = getelementptr inbounds %struct.smpThrown_struct* %103, i32 0, i32 1
  %105 = load %struct.obj_struct** %104, align 8
  %106 = bitcast %struct.obj_struct* %105 to i8*
  %107 = load %struct.smpThrown_struct** %core, align 8
  %108 = getelementptr inbounds %struct.smpThrown_struct* %107, i32 0, i32 2
  %109 = load i64* %108, align 8
  %110 = mul i64 32, %109
  %111 = call i8* @smp_realloc(i8* %106, i64 %110)
  %112 = bitcast i8* %111 to %struct.obj_struct*
  %113 = load %struct.smpThrown_struct** %core, align 8
  %114 = getelementptr inbounds %struct.smpThrown_struct* %113, i32 0, i32 1
  store %struct.obj_struct* %112, %struct.obj_struct** %114, align 8
  %115 = load %struct.smpThrown_struct** %core, align 8
  %116 = getelementptr inbounds %struct.smpThrown_struct* %115, i32 0, i32 2
  %117 = load i64* %116, align 8
  %118 = sub i64 %117, 1
  %119 = load %struct.smpThrown_struct** %core, align 8
  %120 = getelementptr inbounds %struct.smpThrown_struct* %119, i32 0, i32 1
  %121 = load %struct.obj_struct** %120, align 8
  %122 = getelementptr inbounds %struct.obj_struct* %121, i64 %118
  %123 = bitcast %struct.obj_struct* %122 to i8*
  %124 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 32, i32 8, i1 false)
  br label %125

; <label>:125                                     ; preds = %98, %96
  %126 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %127

; <label>:127                                     ; preds = %125, %10
  ret void
}

define i32 @smpThrown_contains_namep(%struct.obj_struct* byval %obj, i8* %name) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %name, i8** %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %28, %0
  %4 = load i64* %i, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smpThrown_struct*
  %8 = getelementptr inbounds %struct.smpThrown_struct* %7, i32 0, i32 2
  %9 = load i64* %8, align 8
  %10 = icmp ult i64 %4, %9
  br i1 %10, label %11, label %31

; <label>:11                                      ; preds = %3
  %12 = load i64* %i, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smpThrown_struct*
  %16 = getelementptr inbounds %struct.smpThrown_struct* %15, i32 0, i32 1
  %17 = load %struct.obj_struct** %16, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 %12
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 2
  %20 = load %struct.smpType_struct** %19, align 8
  %21 = getelementptr inbounds %struct.smpType_struct* %20, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = load i8** %2, align 8
  %24 = call i32 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %11
  store i32 1, i32* %1
  br label %32

; <label>:27                                      ; preds = %11
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i64* %i, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %i, align 8
  br label %3

; <label>:31                                      ; preds = %3
  store i32 0, i32* %1
  br label %32

; <label>:32                                      ; preds = %31, %26
  %33 = load i32* %1
  ret i32 %33
}

define void @smpThrown_get_first_value(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.smpThrown_struct*
  %4 = getelementptr inbounds %struct.smpThrown_struct* %3, i32 0, i32 2
  %5 = load i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %18

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smpThrown_struct*
  %13 = getelementptr inbounds %struct.smpThrown_struct* %12, i32 0, i32 1
  %14 = load %struct.obj_struct** %13, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %18

; <label>:18                                      ; preds = %9, %7
  ret void
}

define i32 @smp_should_breakp_c(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %2 = load %struct.smpType_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smpType_struct* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = load i32* @smpType_id_thrown, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

define i32 @smp_should_returnp_c(%struct.obj_struct* byval %obj) nounwind {
; <label>:0
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %2 = load %struct.smpType_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smpType_struct* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = load i32* @smpType_id_thrown, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %29

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smpThrown_struct*
  %11 = bitcast %struct.smpThrown_struct* %10 to i32*
  %12 = load i32* %11, align 8
  %13 = and i32 %12, 15
  %14 = shl i32 %13, 28
  %15 = ashr i32 %14, 28
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

; <label>:17                                      ; preds = %7
  %18 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.smpThrown_struct*
  %21 = bitcast %struct.smpThrown_struct* %20 to i32*
  %22 = load i32* %21, align 8
  %23 = and i32 %22, 15
  %24 = shl i32 %23, 28
  %25 = ashr i32 %24, 28
  %26 = icmp eq i32 %25, 1
  br label %27

; <label>:27                                      ; preds = %17, %7
  %28 = phi i1 [ true, %7 ], [ %26, %17 ]
  br label %29

; <label>:29                                      ; preds = %27, %0
  %30 = phi i1 [ false, %0 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare i32 @asprintf(i8**, i8*, ...)

define void @smpType_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %type = alloca %struct.smpType_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpType_struct*
  %6 = bitcast %struct.smpType_struct* %type to i8*
  %7 = bitcast %struct.smpType_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 64, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 7
  %9 = load %struct.minihash_struct** %8, align 8
  %10 = call i32 @minihash_clear(%struct.minihash_struct* %9)
  %11 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 8
  %12 = load %struct.minihash_struct** %11, align 8
  %13 = call i32 @minihash_clear(%struct.minihash_struct* %12)
  %14 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 0
  %15 = load i8** %14, align 8
  call void @smp_free(i8* %15)
  %16 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 3
  %17 = load %struct.smpType_struct*** %16, align 8
  %18 = bitcast %struct.smpType_struct** %17 to i8*
  call void @smp_free(i8* %18)
  %19 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 3
  store %struct.smpType_struct** null, %struct.smpType_struct*** %19, align 8
  %20 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 5
  %21 = load %struct.minihash_struct** %20, align 8
  %22 = call i32 @minihash_clear(%struct.minihash_struct* %21)
  %23 = getelementptr inbounds %struct.smpType_struct* %type, i32 0, i32 6
  %24 = load %struct.minihash_struct** %23, align 8
  %25 = call i32 @minihash_clear(%struct.minihash_struct* %24)
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpType_def_general(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i32 %flags, i8* %name, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %data = alloca %struct.minihash_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  store i32 %flags, i32* %1, align 4
  store i8* %name, i8** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 2
  %9 = load %struct.smpType_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smpType_struct* %9, i32 0, i32 0
  %11 = load i8** %10, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  %16 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  br label %170

; <label>:17                                      ; preds = %0
  store %struct.minihash_struct* null, %struct.minihash_struct** %data, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 2
  %19 = load %struct.smpType_struct** %18, align 8
  %20 = getelementptr inbounds %struct.smpType_struct* %19, i32 0, i32 0
  %21 = load i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

; <label>:24                                      ; preds = %17
  %25 = bitcast %struct.obj_struct* %4 to i8*
  %26 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %3, %struct.smpType_struct* @smpType_class, %struct.obj_struct* byval %4)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %170

; <label>:27                                      ; preds = %17
  %28 = load i32* %1, align 4
  %29 = and i32 %28, 3840
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %33 = load %struct.smpType_struct** %32, align 8
  %34 = getelementptr inbounds %struct.smpType_struct* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

; <label>:38                                      ; preds = %31
  %39 = bitcast %struct.obj_struct* %6 to i8*
  %40 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  call void @smpTypeError_init(%struct.obj_struct* sret %5, %struct.smpType_struct* @smpType_function, %struct.obj_struct* byval %6)
  call void @smpGlobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %5)
  br label %170

; <label>:41                                      ; preds = %31, %27
  %42 = load i32* %1, align 4
  %43 = and i32 %42, 3840
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %99

; <label>:45                                      ; preds = %41
  %46 = load i8** %2, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add i64 %47, 1
  %49 = mul i64 1, %48
  %50 = call i8* @smp_malloc(i64 %49)
  %51 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %52 = load i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.smpFunction_struct*
  %54 = getelementptr inbounds %struct.smpFunction_struct* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %56 = load i8** %55, align 8
  %57 = bitcast i8* %56 to %struct.smpFunction_struct*
  %58 = getelementptr inbounds %struct.smpFunction_struct* %57, i32 0, i32 1
  %59 = load i8** %58, align 8
  %60 = call i64 @llvm.objectsize.i64(i8* %59, i1 false)
  %61 = icmp ne i64 %60, -1
  br i1 %61, label %62, label %76

; <label>:62                                      ; preds = %45
  %63 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %64 = load i8** %63, align 8
  %65 = bitcast i8* %64 to %struct.smpFunction_struct*
  %66 = getelementptr inbounds %struct.smpFunction_struct* %65, i32 0, i32 1
  %67 = load i8** %66, align 8
  %68 = load i8** %2, align 8
  %69 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %70 = load i8** %69, align 8
  %71 = bitcast i8* %70 to %struct.smpFunction_struct*
  %72 = getelementptr inbounds %struct.smpFunction_struct* %71, i32 0, i32 1
  %73 = load i8** %72, align 8
  %74 = call i64 @llvm.objectsize.i64(i8* %73, i1 false)
  %75 = call i8* @__strcpy_chk(i8* %67, i8* %68, i64 %74)
  br label %84

; <label>:76                                      ; preds = %45
  %77 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %78 = load i8** %77, align 8
  %79 = bitcast i8* %78 to %struct.smpFunction_struct*
  %80 = getelementptr inbounds %struct.smpFunction_struct* %79, i32 0, i32 1
  %81 = load i8** %80, align 8
  %82 = load i8** %2, align 8
  %83 = call i8* @__inline_strcpy_chk(i8* %81, i8* %82)
  br label %84

; <label>:84                                      ; preds = %76, %62
  %85 = phi i8* [ %75, %62 ], [ %83, %76 ]
  %86 = load i32* %1, align 4
  %87 = and i32 %86, 240
  %88 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %89 = load i8** %88, align 8
  %90 = bitcast i8* %89 to %struct.smpFunction_struct*
  %91 = and i32 %87, 255
  %92 = shl i32 %91, 24
  %93 = ashr i32 %92, 24
  %94 = bitcast %struct.smpFunction_struct* %90 to i32*
  %95 = and i32 %91, 255
  %96 = load i32* %94, align 8
  %97 = and i32 %96, -256
  %98 = or i32 %97, %95
  store i32 %98, i32* %94, align 8
  br label %99

; <label>:99                                      ; preds = %84, %41
  %100 = load i32* %1, align 4
  %101 = and i32 %100, 15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %128

; <label>:103                                     ; preds = %99
  %104 = load i32* %1, align 4
  %105 = and i32 %104, 3840
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

; <label>:107                                     ; preds = %103
  %108 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %109 = load i8** %108, align 8
  %110 = bitcast i8* %109 to %struct.smpType_struct*
  %111 = getelementptr inbounds %struct.smpType_struct* %110, i32 0, i32 5
  %112 = load %struct.minihash_struct** %111, align 8
  store %struct.minihash_struct* %112, %struct.minihash_struct** %data, align 8
  br label %127

; <label>:113                                     ; preds = %103
  %114 = load i32* %1, align 4
  %115 = and i32 %114, 3840
  %116 = icmp eq i32 %115, 256
  br i1 %116, label %117, label %123

; <label>:117                                     ; preds = %113
  %118 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %119 = load i8** %118, align 8
  %120 = bitcast i8* %119 to %struct.smpType_struct*
  %121 = getelementptr inbounds %struct.smpType_struct* %120, i32 0, i32 6
  %122 = load %struct.minihash_struct** %121, align 8
  store %struct.minihash_struct* %122, %struct.minihash_struct** %data, align 8
  br label %126

; <label>:123                                     ; preds = %113
  %124 = load i32* %1, align 4
  %125 = and i32 %124, 3840
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([38 x i8]* @.str181, i32 0, i32 0), i32 %125)
  br label %126

; <label>:126                                     ; preds = %123, %117
  br label %127

; <label>:127                                     ; preds = %126, %107
  br label %161

; <label>:128                                     ; preds = %99
  %129 = load i32* %1, align 4
  %130 = and i32 %129, 15
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %157

; <label>:132                                     ; preds = %128
  %133 = load i32* %1, align 4
  %134 = and i32 %133, 3840
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %142

; <label>:136                                     ; preds = %132
  %137 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %138 = load i8** %137, align 8
  %139 = bitcast i8* %138 to %struct.smpType_struct*
  %140 = getelementptr inbounds %struct.smpType_struct* %139, i32 0, i32 7
  %141 = load %struct.minihash_struct** %140, align 8
  store %struct.minihash_struct* %141, %struct.minihash_struct** %data, align 8
  br label %156

; <label>:142                                     ; preds = %132
  %143 = load i32* %1, align 4
  %144 = and i32 %143, 3840
  %145 = icmp eq i32 %144, 256
  br i1 %145, label %146, label %152

; <label>:146                                     ; preds = %142
  %147 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %148 = load i8** %147, align 8
  %149 = bitcast i8* %148 to %struct.smpType_struct*
  %150 = getelementptr inbounds %struct.smpType_struct* %149, i32 0, i32 8
  %151 = load %struct.minihash_struct** %150, align 8
  store %struct.minihash_struct* %151, %struct.minihash_struct** %data, align 8
  br label %155

; <label>:152                                     ; preds = %142
  %153 = load i32* %1, align 4
  %154 = and i32 %153, 3840
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([38 x i8]* @.str181, i32 0, i32 0), i32 %154)
  br label %155

; <label>:155                                     ; preds = %152, %146
  br label %156

; <label>:156                                     ; preds = %155, %136
  br label %160

; <label>:157                                     ; preds = %128
  %158 = load i32* %1, align 4
  %159 = and i32 %158, 15
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([26 x i8]* @.str182, i32 0, i32 0), i32 %159)
  br label %160

; <label>:160                                     ; preds = %157, %156
  br label %161

; <label>:161                                     ; preds = %160, %127
  %162 = call i32 @gc_stack_push(%struct.obj_struct* %obj)
  %163 = load %struct.minihash_struct** %data, align 8
  %164 = load i8** %2, align 8
  %165 = bitcast %struct.obj_struct* %7 to i8*
  %166 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 32, i32 8, i1 false)
  %167 = call i32 @minihash_add(%struct.minihash_struct* %163, i8* %164, %struct.obj_struct* byval %7)
  %168 = bitcast %struct.obj_struct* %agg.result to i8*
  %169 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* %169, i64 32, i32 8, i1 false)
  br label %170

; <label>:170                                     ; preds = %161, %38, %24, %14
  ret void
}

define void @smpType_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = load %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %3, i64 0
  %5 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %6 = load %struct.smpType_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smpType_struct* %6, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %13 = load i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.smpType_struct*
  %15 = getelementptr inbounds %struct.smpType_struct* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 3
  %20 = load i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.smpType_struct*
  %22 = getelementptr inbounds %struct.smpType_struct* %21, i32 0, i32 1
  %23 = load i32* %22, align 4
  %24 = icmp eq i32 %16, %23
  %25 = zext i1 %24 to i32
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %28

; <label>:26                                      ; preds = %0
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %26, %11
  ret void
}

define void @smpType_relatedp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %type1 = alloca %struct.smpType_struct*, align 8
  %type2 = alloca %struct.smpType_struct, align 8
  %3 = alloca %struct.smpType_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpType_struct*
  store %struct.smpType_struct* %6, %struct.smpType_struct** %type1, align 8
  %7 = load %struct.obj_struct** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %7, i64 0
  %9 = getelementptr inbounds %struct.obj_struct* %8, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.smpType_struct*
  %12 = bitcast %struct.smpType_struct* %type2 to i8*
  %13 = bitcast %struct.smpType_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 64, i32 8, i1 false)
  %14 = load %struct.smpType_struct** %type1, align 8
  %15 = bitcast %struct.smpType_struct* %3 to i8*
  %16 = bitcast %struct.smpType_struct* %type2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 64, i32 8, i1 false)
  %17 = call i32 @smpObject_instancep_c(%struct.smpType_struct* %14, %struct.smpType_struct* byval %3)
  call void @smpBool_init(%struct.obj_struct* sret %agg.result, i32 %17)
  ret void
}

define i32 @main(i32 %argc, i8** %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %tmp = alloca %struct.obj_struct, align 8
  %arr = alloca %struct.obj_struct, align 8
  %i = alloca i32, align 4
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %10 = call i32 @gc_init()
  %11 = call i32 @scope_init()
  %12 = call i32 @test_init()
  %13 = call i32 @init_smp_classes()
  call void @smpArray_init(%struct.obj_struct* sret %arr)
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %26, %0
  %15 = load i32* %i, align 4
  %16 = load i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

; <label>:18                                      ; preds = %14
  %19 = load i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = load i8*** %3, align 8
  %22 = getelementptr inbounds i8** %21, i64 %20
  %23 = load i8** %22
  call void @smpString_init(%struct.obj_struct* sret %tmp, i8* %23)
  %24 = bitcast %struct.obj_struct* %4 to i8*
  %25 = bitcast %struct.obj_struct* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  call void @smpArray_add_now(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %tmp)
  br label %26

; <label>:26                                      ; preds = %18
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %14

; <label>:29                                      ; preds = %14
  %30 = bitcast %struct.obj_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void @smpGlobal_main(%struct.obj_struct* sret %res, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %arr)
  %31 = bitcast %struct.obj_struct* %7 to i8*
  %32 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  %33 = call i32 @smp_thrown_exceptionp_c(%struct.obj_struct* byval %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35                                      ; preds = %29
  %36 = bitcast %struct.obj_struct* %8 to i8*
  %37 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %9, i8* getelementptr inbounds ([5 x i8]* @.str183, i32 0, i32 0), %struct.obj_struct* byval %8)
  br label %38

; <label>:38                                      ; preds = %35, %29
  %39 = call i32 @scope_clear()
  ret i32 0
}

declare void @smpGlobal_main(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define internal i32 @__istype(i32 %_c, i64 %_f) nounwind inlinehint {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 %_c, i32* %1, align 4
  store i64 %_f, i64* %2, align 8
  %3 = load i32* %1, align 4
  %4 = call i32 @isascii(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = load i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [256 x i32]* getelementptr inbounds (%1* @_DefaultRuneLocale, i32 0, i32 5), i32 0, i64 %8
  %10 = load i32* %9
  %11 = zext i32 %10 to i64
  %12 = load i64* %2, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  br label %26

; <label>:18                                      ; preds = %0
  %19 = load i32* %1, align 4
  %20 = load i64* %2, align 8
  %21 = call i32 @__maskrune(i32 %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  br label %26

; <label>:26                                      ; preds = %18, %6
  %27 = phi i32 [ %17, %6 ], [ %25, %18 ]
  ret i32 %27
}

define internal i32 @isascii(i32 %_c) nounwind inlinehint {
  %1 = alloca i32, align 4
  store i32 %_c, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = and i32 %2, -128
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare i32 @__maskrune(i32, i64)
