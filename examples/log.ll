; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str0 = internal constant [7 x i8] c"%0.6f\0A\00"
@polybench_t_end = global [1 x double] undef
@polybench_t_start = global [1 x double] undef

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @printNewline()

declare void @printClose()

declare void @printComma()

declare void @printF64(double)

declare void @printOpen()

declare i32 @printf(ptr, ...)

define i32 @main() {
  %1 = alloca double, i64 1, align 8
  %2 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %1, 0
  %3 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %2, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %3, i64 0, 2
  %5 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %4, i64 1, 3, 0
  %6 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %5, i64 1, 4, 0
  %7 = getelementptr double, ptr %1, i64 0
  store double undef, ptr %7, align 8
  %8 = alloca double, i64 1, align 8
  %9 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %9, ptr %8, 1
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %10, i64 0, 2
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, i64 1, 3, 0
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 1, 4, 0
  %14 = getelementptr double, ptr %8, i64 0
  store double undef, ptr %14, align 8
  %15 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1440000) to i64))
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, ptr %15, 1
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 0, 2
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 1200, 3, 0
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, i64 1200, 3, 1
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, i64 1200, 4, 0
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 1, 4, 1
  %23 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1200000) to i64))
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %23, 0
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, ptr %23, 1
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 0, 2
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 1200, 3, 0
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 1000, 3, 1
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 1000, 4, 0
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, i64 1, 4, 1
  %31 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1200000) to i64))
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %31, 0
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, ptr %31, 1
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, i64 0, 2
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 1200, 3, 0
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, i64 1000, 3, 1
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, i64 1000, 4, 0
  %38 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 1, 4, 1
  call void @init_array(i32 1200, i32 1000, ptr %8, ptr %8, i64 0, i64 1, i64 1, ptr %1, ptr %1, i64 0, i64 1, i64 1, ptr %15, ptr %15, i64 0, i64 1200, i64 1200, i64 1200, i64 1, ptr %23, ptr %23, i64 0, i64 1200, i64 1000, i64 1000, i64 1, ptr %31, ptr %31, i64 0, i64 1200, i64 1000, i64 1000, i64 1)
  call void @polybench_timer_start()
  %39 = getelementptr double, ptr %8, i64 0
  %40 = load double, ptr %39, align 8
  %41 = getelementptr double, ptr %1, i64 0
  %42 = load double, ptr %41, align 8
  call void @kernel_syr2k(i32 1200, i32 1000, double %40, double %42, ptr %15, ptr %15, i64 0, i64 1200, i64 1200, i64 1200, i64 1, ptr %23, ptr %23, i64 0, i64 1200, i64 1000, i64 1000, i64 1, ptr %31, ptr %31, i64 0, i64 1200, i64 1000, i64 1000, i64 1)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %43 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 1
  %44 = getelementptr double, ptr %43, i64 0
  %45 = load <20 x double>, ptr %44, align 8
  call void @printOpen()
  br label %46

46:                                               ; preds = %53, %0
  %47 = phi i64 [ %54, %53 ], [ 0, %0 ]
  %48 = icmp slt i64 %47, 20
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = extractelement <20 x double> %45, i64 %47
  call void @printF64(double %50)
  %51 = icmp ult i64 %47, 19
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @printComma()
  br label %53

53:                                               ; preds = %52, %49
  %54 = add i64 %47, 1
  br label %46

55:                                               ; preds = %46
  call void @printClose()
  call void @printNewline()
  call void @free(ptr %15)
  call void @free(ptr %23)
  call void @free(ptr %31)
  ret i32 0
}

define internal void @init_array(i32 %0, i32 %1, ptr %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, ptr %12, ptr %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32) {
  %34 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %2, 0
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %34, ptr %3, 1
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, i64 %4, 2
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, i64 %5, 3, 0
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, i64 %6, 4, 0
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %7, 0
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, ptr %8, 1
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 %9, 2
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 %10, 3, 0
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %42, i64 %11, 4, 0
  %44 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %12, 0
  %45 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %44, ptr %13, 1
  %46 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, i64 %14, 2
  %47 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, i64 %15, 3, 0
  %48 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %47, i64 %17, 4, 0
  %49 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, i64 %16, 3, 1
  %50 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %49, i64 %18, 4, 1
  %51 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %19, 0
  %52 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %51, ptr %20, 1
  %53 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %52, i64 %21, 2
  %54 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %53, i64 %22, 3, 0
  %55 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, i64 %24, 4, 0
  %56 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, i64 %23, 3, 1
  %57 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, i64 %25, 4, 1
  %58 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %26, 0
  %59 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %58, ptr %27, 1
  %60 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %59, i64 %28, 2
  %61 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %60, i64 %29, 3, 0
  %62 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, i64 %31, 4, 0
  %63 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %62, i64 %30, 3, 1
  %64 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %63, i64 %32, 4, 1
  %65 = sext i32 %1 to i64
  %66 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, 1
  %67 = getelementptr double, ptr %66, i64 0
  store double 1.500000e+00, ptr %67, align 8
  %68 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, 1
  %69 = getelementptr double, ptr %68, i64 0
  store double 1.200000e+00, ptr %69, align 8
  %70 = sext i32 %0 to i64
  br label %71

71:                                               ; preds = %98, %33
  %72 = phi i64 [ %99, %98 ], [ 0, %33 ]
  %73 = icmp slt i64 %72, %70
  br i1 %73, label %74, label %100

74:                                               ; preds = %71
  %75 = trunc i64 %72 to i32
  br label %76

76:                                               ; preds = %79, %74
  %77 = phi i64 [ %97, %79 ], [ 0, %74 ]
  %78 = icmp slt i64 %77, %65
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = trunc i64 %77 to i32
  %81 = mul i32 %75, %80
  %82 = add i32 %75, %80
  %83 = sitofp i32 %82 to double
  %84 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %57, 1
  %85 = mul i64 %72, 1000
  %86 = add i64 %85, %77
  %87 = getelementptr double, ptr %84, i64 %86
  store double %83, ptr %87, align 8
  %88 = add i32 %81, 2
  %89 = srem i32 %88, %1
  %90 = sitofp i32 %89 to double
  %91 = sitofp i32 %1 to double
  %92 = fdiv double %90, %91
  %93 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %64, 1
  %94 = mul i64 %72, 1000
  %95 = add i64 %94, %77
  %96 = getelementptr double, ptr %93, i64 %95
  store double %92, ptr %96, align 8
  %97 = add i64 %77, 1
  br label %76

98:                                               ; preds = %76
  %99 = add i64 %72, 1
  br label %71

100:                                              ; preds = %71
  %101 = sext i32 %0 to i64
  br label %102

102:                                              ; preds = %123, %100
  %103 = phi i64 [ %124, %123 ], [ 0, %100 ]
  %104 = icmp slt i64 %103, %101
  br i1 %104, label %105, label %125

105:                                              ; preds = %102
  %106 = trunc i64 %103 to i32
  br label %107

107:                                              ; preds = %110, %105
  %108 = phi i64 [ %122, %110 ], [ 0, %105 ]
  %109 = icmp slt i64 %108, %101
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = trunc i64 %108 to i32
  %112 = mul i32 %106, %111
  %113 = add i32 %112, 3
  %114 = srem i32 %113, %0
  %115 = sitofp i32 %114 to double
  %116 = sitofp i32 %1 to double
  %117 = fdiv double %115, %116
  %118 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %50, 1
  %119 = mul i64 %103, 1200
  %120 = add i64 %119, %108
  %121 = getelementptr double, ptr %118, i64 %120
  store double %117, ptr %121, align 8
  %122 = add i64 %108, 1
  br label %107

123:                                              ; preds = %107
  %124 = add i64 %103, 1
  br label %102

125:                                              ; preds = %102
  ret void
}

define void @polybench_timer_start() {
  call void @polybench_prepare_instruments()
  %1 = call double @rtclock()
  store double %1, ptr @polybench_t_start, align 8
  ret void
}

define internal void @kernel_syr2k(i32 %0, i32 %1, double %2, double %3, ptr %4, ptr %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, ptr %18, ptr %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24) {
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %4, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, ptr %5, 1
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 %6, 2
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 %7, 3, 0
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, i64 %9, 4, 0
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, i64 %8, 3, 1
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, i64 %10, 4, 1
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %11, 0
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, ptr %12, 1
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %13, 2
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, i64 %14, 3, 0
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, i64 %16, 4, 0
  %38 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 %15, 3, 1
  %39 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %38, i64 %17, 4, 1
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %18, 0
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, ptr %19, 1
  %42 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, i64 %20, 2
  %43 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %42, i64 %21, 3, 0
  %44 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %43, i64 %23, 4, 0
  %45 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %44, i64 %22, 3, 1
  %46 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, i64 %24, 4, 1
  %47 = sext i32 %1 to i64
  %48 = sext i32 %0 to i64
  %49 = insertelement <128 x double> undef, double %3, i32 0
  %50 = shufflevector <128 x double> %49, <128 x double> undef, <128 x i32> zeroinitializer
  %51 = insertelement <128 x double> undef, double %2, i32 0
  %52 = shufflevector <128 x double> %51, <128 x double> undef, <128 x i32> zeroinitializer
  br label %53

53:                                               ; preds = %179, %25
  %54 = phi i64 [ %180, %179 ], [ 0, %25 ]
  %55 = icmp slt i64 %54, %48
  br i1 %55, label %56, label %181

56:                                               ; preds = %53
  %57 = add i64 %54, 1
  %58 = sdiv i64 %57, 128
  br label %59

59:                                               ; preds = %62, %56
  %60 = phi i64 [ %74, %62 ], [ 0, %56 ]
  %61 = icmp slt i64 %60, %58
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = mul i64 %60, 128
  %64 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %65 = mul i64 %54, 1200
  %66 = add i64 %65, %63
  %67 = getelementptr double, ptr %64, i64 %66
  %68 = load <128 x double>, ptr %67, align 8
  %69 = fmul <128 x double> %68, %50
  %70 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %71 = mul i64 %54, 1200
  %72 = add i64 %71, %63
  %73 = getelementptr double, ptr %70, i64 %72
  store <128 x double> %69, ptr %73, align 8
  %74 = add i64 %60, 1
  br label %59

75:                                               ; preds = %59
  %76 = mul i64 %58, 128
  %77 = sub i64 %57, %76
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = trunc i64 %77 to i32
  %81 = insertelement <128 x i32> undef, i32 %80, i32 0
  %82 = shufflevector <128 x i32> %81, <128 x i32> undef, <128 x i32> zeroinitializer
  %83 = icmp sgt <128 x i32> %82, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %84 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %85 = mul i64 %54, 1200
  %86 = add i64 %85, %76
  %87 = getelementptr double, ptr %84, i64 %86
  %88 = call <128 x double> @llvm.masked.load.v128f64.p0(ptr %87, i32 8, <128 x i1> %83, <128 x double> zeroinitializer)
  %89 = fmul <128 x double> %88, %50
  %90 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %91 = mul i64 %54, 1200
  %92 = add i64 %91, %76
  %93 = getelementptr double, ptr %90, i64 %92
  call void @llvm.masked.store.v128f64.p0(<128 x double> %89, ptr %93, i32 8, <128 x i1> %83)
  br label %94

94:                                               ; preds = %79, %75
  br label %95

95:                                               ; preds = %177, %94
  %96 = phi i64 [ %178, %177 ], [ 0, %94 ]
  %97 = icmp slt i64 %96, %47
  br i1 %97, label %98, label %179

98:                                               ; preds = %95
  %99 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, 1
  %100 = mul i64 %54, 1000
  %101 = add i64 %100, %96
  %102 = getelementptr double, ptr %99, i64 %101
  %103 = load double, ptr %102, align 8
  %104 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 1
  %105 = mul i64 %54, 1000
  %106 = add i64 %105, %96
  %107 = getelementptr double, ptr %104, i64 %106
  %108 = load double, ptr %107, align 8
  %109 = insertelement <128 x double> undef, double %103, i32 0
  %110 = shufflevector <128 x double> %109, <128 x double> undef, <128 x i32> zeroinitializer
  %111 = insertelement <128 x double> undef, double %108, i32 0
  %112 = shufflevector <128 x double> %111, <128 x double> undef, <128 x i32> zeroinitializer
  br label %113

113:                                              ; preds = %116, %98
  %114 = phi i64 [ %144, %116 ], [ 0, %98 ]
  %115 = icmp slt i64 %114, %58
  br i1 %115, label %116, label %145

116:                                              ; preds = %113
  %117 = mul i64 %114, 128
  %118 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, 1
  %119 = mul i64 %117, 1000
  %120 = add i64 %119, %96
  %121 = getelementptr double, ptr %118, i64 %120
  %122 = getelementptr double, ptr %121, <128 x i64> <i64 0, i64 1000, i64 2000, i64 3000, i64 4000, i64 5000, i64 6000, i64 7000, i64 8000, i64 9000, i64 10000, i64 11000, i64 12000, i64 13000, i64 14000, i64 15000, i64 16000, i64 17000, i64 18000, i64 19000, i64 20000, i64 21000, i64 22000, i64 23000, i64 24000, i64 25000, i64 26000, i64 27000, i64 28000, i64 29000, i64 30000, i64 31000, i64 32000, i64 33000, i64 34000, i64 35000, i64 36000, i64 37000, i64 38000, i64 39000, i64 40000, i64 41000, i64 42000, i64 43000, i64 44000, i64 45000, i64 46000, i64 47000, i64 48000, i64 49000, i64 50000, i64 51000, i64 52000, i64 53000, i64 54000, i64 55000, i64 56000, i64 57000, i64 58000, i64 59000, i64 60000, i64 61000, i64 62000, i64 63000, i64 64000, i64 65000, i64 66000, i64 67000, i64 68000, i64 69000, i64 70000, i64 71000, i64 72000, i64 73000, i64 74000, i64 75000, i64 76000, i64 77000, i64 78000, i64 79000, i64 80000, i64 81000, i64 82000, i64 83000, i64 84000, i64 85000, i64 86000, i64 87000, i64 88000, i64 89000, i64 90000, i64 91000, i64 92000, i64 93000, i64 94000, i64 95000, i64 96000, i64 97000, i64 98000, i64 99000, i64 100000, i64 101000, i64 102000, i64 103000, i64 104000, i64 105000, i64 106000, i64 107000, i64 108000, i64 109000, i64 110000, i64 111000, i64 112000, i64 113000, i64 114000, i64 115000, i64 116000, i64 117000, i64 118000, i64 119000, i64 120000, i64 121000, i64 122000, i64 123000, i64 124000, i64 125000, i64 126000, i64 127000>
  %123 = call <128 x double> @llvm.masked.gather.v128f64.v128p0(<128 x ptr> %122, i32 8, <128 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <128 x double> zeroinitializer)
  %124 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 1
  %125 = mul i64 %117, 1000
  %126 = add i64 %125, %96
  %127 = getelementptr double, ptr %124, i64 %126
  %128 = getelementptr double, ptr %127, <128 x i64> <i64 0, i64 1000, i64 2000, i64 3000, i64 4000, i64 5000, i64 6000, i64 7000, i64 8000, i64 9000, i64 10000, i64 11000, i64 12000, i64 13000, i64 14000, i64 15000, i64 16000, i64 17000, i64 18000, i64 19000, i64 20000, i64 21000, i64 22000, i64 23000, i64 24000, i64 25000, i64 26000, i64 27000, i64 28000, i64 29000, i64 30000, i64 31000, i64 32000, i64 33000, i64 34000, i64 35000, i64 36000, i64 37000, i64 38000, i64 39000, i64 40000, i64 41000, i64 42000, i64 43000, i64 44000, i64 45000, i64 46000, i64 47000, i64 48000, i64 49000, i64 50000, i64 51000, i64 52000, i64 53000, i64 54000, i64 55000, i64 56000, i64 57000, i64 58000, i64 59000, i64 60000, i64 61000, i64 62000, i64 63000, i64 64000, i64 65000, i64 66000, i64 67000, i64 68000, i64 69000, i64 70000, i64 71000, i64 72000, i64 73000, i64 74000, i64 75000, i64 76000, i64 77000, i64 78000, i64 79000, i64 80000, i64 81000, i64 82000, i64 83000, i64 84000, i64 85000, i64 86000, i64 87000, i64 88000, i64 89000, i64 90000, i64 91000, i64 92000, i64 93000, i64 94000, i64 95000, i64 96000, i64 97000, i64 98000, i64 99000, i64 100000, i64 101000, i64 102000, i64 103000, i64 104000, i64 105000, i64 106000, i64 107000, i64 108000, i64 109000, i64 110000, i64 111000, i64 112000, i64 113000, i64 114000, i64 115000, i64 116000, i64 117000, i64 118000, i64 119000, i64 120000, i64 121000, i64 122000, i64 123000, i64 124000, i64 125000, i64 126000, i64 127000>
  %129 = call <128 x double> @llvm.masked.gather.v128f64.v128p0(<128 x ptr> %128, i32 8, <128 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <128 x double> zeroinitializer)
  %130 = fmul <128 x double> %52, %123
  %131 = fmul <128 x double> %130, %112
  %132 = fmul <128 x double> %52, %129
  %133 = call <128 x double> @llvm.fmuladd.v128f64(<128 x double> %132, <128 x double> %110, <128 x double> %131)
  %134 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %135 = mul i64 %54, 1200
  %136 = add i64 %135, %117
  %137 = getelementptr double, ptr %134, i64 %136
  %138 = load <128 x double>, ptr %137, align 8
  %139 = fadd <128 x double> %138, %133
  %140 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %141 = mul i64 %54, 1200
  %142 = add i64 %141, %117
  %143 = getelementptr double, ptr %140, i64 %142
  store <128 x double> %139, ptr %143, align 8
  %144 = add i64 %114, 1
  br label %113

145:                                              ; preds = %113
  br i1 %78, label %146, label %177

146:                                              ; preds = %145
  %147 = trunc i64 %77 to i32
  %148 = insertelement <128 x i32> undef, i32 %147, i32 0
  %149 = shufflevector <128 x i32> %148, <128 x i32> undef, <128 x i32> zeroinitializer
  %150 = icmp sgt <128 x i32> %149, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %151 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, 1
  %152 = mul i64 %76, 1000
  %153 = add i64 %152, %96
  %154 = getelementptr double, ptr %151, i64 %153
  %155 = getelementptr double, ptr %154, <128 x i64> <i64 0, i64 1000, i64 2000, i64 3000, i64 4000, i64 5000, i64 6000, i64 7000, i64 8000, i64 9000, i64 10000, i64 11000, i64 12000, i64 13000, i64 14000, i64 15000, i64 16000, i64 17000, i64 18000, i64 19000, i64 20000, i64 21000, i64 22000, i64 23000, i64 24000, i64 25000, i64 26000, i64 27000, i64 28000, i64 29000, i64 30000, i64 31000, i64 32000, i64 33000, i64 34000, i64 35000, i64 36000, i64 37000, i64 38000, i64 39000, i64 40000, i64 41000, i64 42000, i64 43000, i64 44000, i64 45000, i64 46000, i64 47000, i64 48000, i64 49000, i64 50000, i64 51000, i64 52000, i64 53000, i64 54000, i64 55000, i64 56000, i64 57000, i64 58000, i64 59000, i64 60000, i64 61000, i64 62000, i64 63000, i64 64000, i64 65000, i64 66000, i64 67000, i64 68000, i64 69000, i64 70000, i64 71000, i64 72000, i64 73000, i64 74000, i64 75000, i64 76000, i64 77000, i64 78000, i64 79000, i64 80000, i64 81000, i64 82000, i64 83000, i64 84000, i64 85000, i64 86000, i64 87000, i64 88000, i64 89000, i64 90000, i64 91000, i64 92000, i64 93000, i64 94000, i64 95000, i64 96000, i64 97000, i64 98000, i64 99000, i64 100000, i64 101000, i64 102000, i64 103000, i64 104000, i64 105000, i64 106000, i64 107000, i64 108000, i64 109000, i64 110000, i64 111000, i64 112000, i64 113000, i64 114000, i64 115000, i64 116000, i64 117000, i64 118000, i64 119000, i64 120000, i64 121000, i64 122000, i64 123000, i64 124000, i64 125000, i64 126000, i64 127000>
  %156 = call <128 x double> @llvm.masked.gather.v128f64.v128p0(<128 x ptr> %155, i32 8, <128 x i1> %150, <128 x double> zeroinitializer)
  %157 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %46, 1
  %158 = mul i64 %76, 1000
  %159 = add i64 %158, %96
  %160 = getelementptr double, ptr %157, i64 %159
  %161 = getelementptr double, ptr %160, <128 x i64> <i64 0, i64 1000, i64 2000, i64 3000, i64 4000, i64 5000, i64 6000, i64 7000, i64 8000, i64 9000, i64 10000, i64 11000, i64 12000, i64 13000, i64 14000, i64 15000, i64 16000, i64 17000, i64 18000, i64 19000, i64 20000, i64 21000, i64 22000, i64 23000, i64 24000, i64 25000, i64 26000, i64 27000, i64 28000, i64 29000, i64 30000, i64 31000, i64 32000, i64 33000, i64 34000, i64 35000, i64 36000, i64 37000, i64 38000, i64 39000, i64 40000, i64 41000, i64 42000, i64 43000, i64 44000, i64 45000, i64 46000, i64 47000, i64 48000, i64 49000, i64 50000, i64 51000, i64 52000, i64 53000, i64 54000, i64 55000, i64 56000, i64 57000, i64 58000, i64 59000, i64 60000, i64 61000, i64 62000, i64 63000, i64 64000, i64 65000, i64 66000, i64 67000, i64 68000, i64 69000, i64 70000, i64 71000, i64 72000, i64 73000, i64 74000, i64 75000, i64 76000, i64 77000, i64 78000, i64 79000, i64 80000, i64 81000, i64 82000, i64 83000, i64 84000, i64 85000, i64 86000, i64 87000, i64 88000, i64 89000, i64 90000, i64 91000, i64 92000, i64 93000, i64 94000, i64 95000, i64 96000, i64 97000, i64 98000, i64 99000, i64 100000, i64 101000, i64 102000, i64 103000, i64 104000, i64 105000, i64 106000, i64 107000, i64 108000, i64 109000, i64 110000, i64 111000, i64 112000, i64 113000, i64 114000, i64 115000, i64 116000, i64 117000, i64 118000, i64 119000, i64 120000, i64 121000, i64 122000, i64 123000, i64 124000, i64 125000, i64 126000, i64 127000>
  %162 = call <128 x double> @llvm.masked.gather.v128f64.v128p0(<128 x ptr> %161, i32 8, <128 x i1> %150, <128 x double> zeroinitializer)
  %163 = fmul <128 x double> %52, %156
  %164 = fmul <128 x double> %163, %112
  %165 = fmul <128 x double> %52, %162
  %166 = call <128 x double> @llvm.fmuladd.v128f64(<128 x double> %165, <128 x double> %110, <128 x double> %164)
  %167 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %168 = mul i64 %54, 1200
  %169 = add i64 %168, %76
  %170 = getelementptr double, ptr %167, i64 %169
  %171 = load <128 x double>, ptr %170, align 8
  %172 = fadd <128 x double> %171, %166
  %173 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %174 = mul i64 %54, 1200
  %175 = add i64 %174, %76
  %176 = getelementptr double, ptr %173, i64 %175
  store <128 x double> %172, ptr %176, align 8
  br label %177

177:                                              ; preds = %146, %145
  %178 = add i64 %96, 1
  br label %95

179:                                              ; preds = %95
  %180 = add i64 %54, 1
  br label %53

181:                                              ; preds = %53
  ret void
}

define void @polybench_timer_stop() {
  %1 = call double @rtclock()
  store double %1, ptr @polybench_t_end, align 8
  ret void
}

define void @polybench_timer_print() {
  %1 = load double, ptr @polybench_t_end, align 8
  %2 = load double, ptr @polybench_t_start, align 8
  %3 = fsub double %1, %2
  %4 = call i32 (ptr, ...) @printf(ptr @str0, double %3)
  ret void
}

define void @polybench_prepare_instruments() {
  ret void
}

declare double @rtclock()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <128 x double> @llvm.masked.load.v128f64.p0(ptr nocapture, i32 immarg, <128 x i1>, <128 x double>) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v128f64.p0(<128 x double>, ptr nocapture, i32 immarg, <128 x i1>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <128 x double> @llvm.masked.gather.v128f64.v128p0(<128 x ptr>, i32 immarg, <128 x i1>, <128 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <128 x double> @llvm.fmuladd.v128f64(<128 x double>, <128 x double>, <128 x double>) #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
