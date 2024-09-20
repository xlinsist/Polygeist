; ModuleID = '/root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c'
source_filename = "/root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %C = alloca ptr, align 8
  %A = alloca ptr, align 8
  %B = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1200, ptr %n, align 4
  store i32 1000, ptr %m, align 4
  %call = call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8)
  store ptr %call, ptr %C, align 8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  store ptr %call1, ptr %A, align 8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  store ptr %call2, ptr %B, align 8
  %0 = load i32, ptr %n, align 4
  %1 = load i32, ptr %m, align 4
  %2 = load ptr, ptr %C, align 8
  %arraydecay = getelementptr inbounds [1200 x [1200 x double]], ptr %2, i64 0, i64 0
  %3 = load ptr, ptr %A, align 8
  %arraydecay3 = getelementptr inbounds [1200 x [1000 x double]], ptr %3, i64 0, i64 0
  %4 = load ptr, ptr %B, align 8
  %arraydecay4 = getelementptr inbounds [1200 x [1000 x double]], ptr %4, i64 0, i64 0
  call void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %alpha, ptr noundef %beta, ptr noundef %arraydecay, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  %5 = load i32, ptr %n, align 4
  %6 = load i32, ptr %m, align 4
  %7 = load double, ptr %alpha, align 8
  %8 = load double, ptr %beta, align 8
  %9 = load ptr, ptr %C, align 8
  %arraydecay5 = getelementptr inbounds [1200 x [1200 x double]], ptr %9, i64 0, i64 0
  %10 = load ptr, ptr %A, align 8
  %arraydecay6 = getelementptr inbounds [1200 x [1000 x double]], ptr %10, i64 0, i64 0
  %11 = load ptr, ptr %B, align 8
  %arraydecay7 = getelementptr inbounds [1200 x [1000 x double]], ptr %11, i64 0, i64 0
  call void @kernel_syr2k(i32 noundef %5, i32 noundef %6, double noundef %7, double noundef %8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %arraydecay7)
  %12 = load ptr, ptr %C, align 8
  call void @free(ptr noundef %12) #4
  %13 = load ptr, ptr %A, align 8
  call void @free(ptr noundef %13) #4
  %14 = load ptr, ptr %B, align 8
  call void @free(ptr noundef %14) #4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) #0 {
entry:
  %n.addr = alloca i64, align 8
  %elt_size.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 %elt_size, ptr %elt_size.addr, align 4
  %0 = load i64, ptr %n.addr, align 8
  %1 = load i32, ptr %elt_size.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %0, %conv
  %call = call noalias ptr @malloc(i64 noundef %mul) #5
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 noundef %n, i32 noundef %m, ptr noundef %alpha, ptr noundef %beta, ptr noundef %C, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %C, ptr %C.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  %0 = load ptr, ptr %alpha.addr, align 8
  store double 1.500000e+00, ptr %0, align 8
  %1 = load ptr, ptr %beta.addr, align 8
  store double 1.200000e+00, ptr %1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %m.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %add, %8
  %conv = sitofp i32 %rem to double
  %9 = load i32, ptr %n.addr, align 4
  %conv4 = sitofp i32 %9 to double
  %div = fdiv double %conv, %conv4
  %10 = load ptr, ptr %A.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [1000 x double], ptr %10, i64 %idxprom
  %12 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [1000 x double], ptr %arrayidx, i64 0, i64 %idxprom5
  store double %div, ptr %arrayidx6, align 8
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %j, align 4
  %mul7 = mul nsw i32 %13, %14
  %add8 = add nsw i32 %mul7, 2
  %15 = load i32, ptr %m.addr, align 4
  %rem9 = srem i32 %add8, %15
  %conv10 = sitofp i32 %rem9 to double
  %16 = load i32, ptr %m.addr, align 4
  %conv11 = sitofp i32 %16 to double
  %div12 = fdiv double %conv10, %conv11
  %17 = load ptr, ptr %B.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [1000 x double], ptr %17, i64 %idxprom13
  %19 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [1000 x double], ptr %arrayidx14, i64 0, i64 %idxprom15
  store double %div12, ptr %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %21 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end19:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc41, %for.end19
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %n.addr, align 4
  %cmp21 = icmp slt i32 %22, %23
  br i1 %cmp21, label %for.body23, label %for.end43

for.body23:                                       ; preds = %for.cond20
  store i32 0, ptr %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc38, %for.body23
  %24 = load i32, ptr %j, align 4
  %25 = load i32, ptr %n.addr, align 4
  %cmp25 = icmp slt i32 %24, %25
  br i1 %cmp25, label %for.body27, label %for.end40

for.body27:                                       ; preds = %for.cond24
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %j, align 4
  %mul28 = mul nsw i32 %26, %27
  %add29 = add nsw i32 %mul28, 3
  %28 = load i32, ptr %n.addr, align 4
  %rem30 = srem i32 %add29, %28
  %conv31 = sitofp i32 %rem30 to double
  %29 = load i32, ptr %m.addr, align 4
  %conv32 = sitofp i32 %29 to double
  %div33 = fdiv double %conv31, %conv32
  %30 = load ptr, ptr %C.addr, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %31 to i64
  %arrayidx35 = getelementptr inbounds [1200 x double], ptr %30, i64 %idxprom34
  %32 = load i32, ptr %j, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [1200 x double], ptr %arrayidx35, i64 0, i64 %idxprom36
  store double %div33, ptr %arrayidx37, align 8
  br label %for.inc38

for.inc38:                                        ; preds = %for.body27
  %33 = load i32, ptr %j, align 4
  %inc39 = add nsw i32 %33, 1
  store i32 %inc39, ptr %j, align 4
  br label %for.cond24, !llvm.loop !9

for.end40:                                        ; preds = %for.cond24
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %34 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %34, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond20, !llvm.loop !10

for.end43:                                        ; preds = %for.cond20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_syr2k(i32 noundef %n, i32 noundef %m, double noundef %alpha, double noundef %beta, ptr noundef %C, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %C.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store double %alpha, ptr %alpha.addr, align 8
  store double %beta, ptr %beta.addr, align 8
  store ptr %C, ptr %C.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load double, ptr %beta.addr, align 8
  %5 = load ptr, ptr %C.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1200 x double], ptr %5, i64 %idxprom
  %7 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [1200 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  %8 = load double, ptr %arrayidx5, align 8
  %mul = fmul double %8, %4
  store double %mul, ptr %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc39, %for.end
  %10 = load i32, ptr %k, align 4
  %11 = load i32, ptr %m.addr, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body8, label %for.end41

for.body8:                                        ; preds = %for.cond6
  store i32 0, ptr %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc36, %for.body8
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %i, align 4
  %cmp10 = icmp sle i32 %12, %13
  br i1 %cmp10, label %for.body11, label %for.end38

for.body11:                                       ; preds = %for.cond9
  %14 = load ptr, ptr %A.addr, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [1000 x double], ptr %14, i64 %idxprom12
  %16 = load i32, ptr %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [1000 x double], ptr %arrayidx13, i64 0, i64 %idxprom14
  %17 = load double, ptr %arrayidx15, align 8
  %18 = load double, ptr %alpha.addr, align 8
  %mul16 = fmul double %17, %18
  %19 = load ptr, ptr %B.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [1000 x double], ptr %19, i64 %idxprom17
  %21 = load i32, ptr %k, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [1000 x double], ptr %arrayidx18, i64 0, i64 %idxprom19
  %22 = load double, ptr %arrayidx20, align 8
  %23 = load ptr, ptr %B.addr, align 8
  %24 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds [1000 x double], ptr %23, i64 %idxprom22
  %25 = load i32, ptr %k, align 4
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds [1000 x double], ptr %arrayidx23, i64 0, i64 %idxprom24
  %26 = load double, ptr %arrayidx25, align 8
  %27 = load double, ptr %alpha.addr, align 8
  %mul26 = fmul double %26, %27
  %28 = load ptr, ptr %A.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [1000 x double], ptr %28, i64 %idxprom27
  %30 = load i32, ptr %k, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds [1000 x double], ptr %arrayidx28, i64 0, i64 %idxprom29
  %31 = load double, ptr %arrayidx30, align 8
  %mul31 = fmul double %mul26, %31
  %32 = call double @llvm.fmuladd.f64(double %mul16, double %22, double %mul31)
  %33 = load ptr, ptr %C.addr, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds [1200 x double], ptr %33, i64 %idxprom32
  %35 = load i32, ptr %j, align 4
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds [1200 x double], ptr %arrayidx33, i64 0, i64 %idxprom34
  %36 = load double, ptr %arrayidx35, align 8
  %add = fadd double %36, %32
  store double %add, ptr %arrayidx35, align 8
  br label %for.inc36

for.inc36:                                        ; preds = %for.body11
  %37 = load i32, ptr %j, align 4
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, ptr %j, align 4
  br label %for.cond9, !llvm.loop !12

for.end38:                                        ; preds = %for.cond9
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %38 = load i32, ptr %k, align 4
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, ptr %k, align 4
  br label %for.cond6, !llvm.loop !13

for.end41:                                        ; preds = %for.cond6
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %39 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %39, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 6c59f0e1b0fb56c909ad7c9aad4bde37dc006ae0)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
