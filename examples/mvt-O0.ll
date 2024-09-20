; ModuleID = '/root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c'
source_filename = "/root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %A = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %y_1 = alloca ptr, align 8
  %y_2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 2000, ptr %n, align 4
  %call = call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  store ptr %call, ptr %A, align 8
  %call1 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call1, ptr %x1, align 8
  %call2 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call2, ptr %x2, align 8
  %call3 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call3, ptr %y_1, align 8
  %call4 = call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  store ptr %call4, ptr %y_2, align 8
  %0 = load i32, ptr %n, align 4
  %1 = load ptr, ptr %x1, align 8
  %arraydecay = getelementptr inbounds [2000 x double], ptr %1, i64 0, i64 0
  %2 = load ptr, ptr %x2, align 8
  %arraydecay5 = getelementptr inbounds [2000 x double], ptr %2, i64 0, i64 0
  %3 = load ptr, ptr %y_1, align 8
  %arraydecay6 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 0
  %4 = load ptr, ptr %y_2, align 8
  %arraydecay7 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 0
  %5 = load ptr, ptr %A, align 8
  %arraydecay8 = getelementptr inbounds [2000 x [2000 x double]], ptr %5, i64 0, i64 0
  call void @init_array(i32 noundef %0, ptr noundef %arraydecay, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %arraydecay7, ptr noundef %arraydecay8)
  %6 = load i32, ptr %n, align 4
  %7 = load ptr, ptr %x1, align 8
  %arraydecay9 = getelementptr inbounds [2000 x double], ptr %7, i64 0, i64 0
  %8 = load ptr, ptr %x2, align 8
  %arraydecay10 = getelementptr inbounds [2000 x double], ptr %8, i64 0, i64 0
  %9 = load ptr, ptr %y_1, align 8
  %arraydecay11 = getelementptr inbounds [2000 x double], ptr %9, i64 0, i64 0
  %10 = load ptr, ptr %y_2, align 8
  %arraydecay12 = getelementptr inbounds [2000 x double], ptr %10, i64 0, i64 0
  %11 = load ptr, ptr %A, align 8
  %arraydecay13 = getelementptr inbounds [2000 x [2000 x double]], ptr %11, i64 0, i64 0
  call void @kernel_mvt(i32 noundef %6, ptr noundef %arraydecay9, ptr noundef %arraydecay10, ptr noundef %arraydecay11, ptr noundef %arraydecay12, ptr noundef %arraydecay13)
  %12 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %12, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx, align 8
  %call14 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str) #6
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, ptr %n, align 4
  %16 = load ptr, ptr %x1, align 8
  %arraydecay15 = getelementptr inbounds [2000 x double], ptr %16, i64 0, i64 0
  %17 = load ptr, ptr %x2, align 8
  %arraydecay16 = getelementptr inbounds [2000 x double], ptr %17, i64 0, i64 0
  call void @print_array(i32 noundef %15, ptr noundef %arraydecay15, ptr noundef %arraydecay16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %18 = load ptr, ptr %A, align 8
  call void @free(ptr noundef %18) #7
  %19 = load ptr, ptr %x1, align 8
  call void @free(ptr noundef %19) #7
  %20 = load ptr, ptr %x2, align 8
  call void @free(ptr noundef %20) #7
  %21 = load ptr, ptr %y_1, align 8
  call void @free(ptr noundef %21) #7
  %22 = load ptr, ptr %y_2, align 8
  call void @free(ptr noundef %22) #7
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
  %call = call noalias ptr @malloc(i64 noundef %mul) #8
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 noundef %n, ptr noundef %x1, ptr noundef %x2, ptr noundef %y_1, ptr noundef %y_2, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca ptr, align 8
  %x2.addr = alloca ptr, align 8
  %y_1.addr = alloca ptr, align 8
  %y_2.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %x1, ptr %x1.addr, align 8
  store ptr %x2, ptr %x2.addr, align 8
  store ptr %y_1, ptr %y_1.addr, align 8
  store ptr %y_2, ptr %y_2.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %2, %3
  %conv = sitofp i32 %rem to double
  %4 = load i32, ptr %n.addr, align 4
  %conv1 = sitofp i32 %4 to double
  %div = fdiv double %conv, %conv1
  %5 = load ptr, ptr %x1.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds double, ptr %5, i64 %idxprom
  store double %div, ptr %arrayidx, align 8
  %7 = load i32, ptr %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, ptr %n.addr, align 4
  %rem2 = srem i32 %add, %8
  %conv3 = sitofp i32 %rem2 to double
  %9 = load i32, ptr %n.addr, align 4
  %conv4 = sitofp i32 %9 to double
  %div5 = fdiv double %conv3, %conv4
  %10 = load ptr, ptr %x2.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds double, ptr %10, i64 %idxprom6
  store double %div5, ptr %arrayidx7, align 8
  %12 = load i32, ptr %i, align 4
  %add8 = add nsw i32 %12, 3
  %13 = load i32, ptr %n.addr, align 4
  %rem9 = srem i32 %add8, %13
  %conv10 = sitofp i32 %rem9 to double
  %14 = load i32, ptr %n.addr, align 4
  %conv11 = sitofp i32 %14 to double
  %div12 = fdiv double %conv10, %conv11
  %15 = load ptr, ptr %y_1.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds double, ptr %15, i64 %idxprom13
  store double %div12, ptr %arrayidx14, align 8
  %17 = load i32, ptr %i, align 4
  %add15 = add nsw i32 %17, 4
  %18 = load i32, ptr %n.addr, align 4
  %rem16 = srem i32 %add15, %18
  %conv17 = sitofp i32 %rem16 to double
  %19 = load i32, ptr %n.addr, align 4
  %conv18 = sitofp i32 %19 to double
  %div19 = fdiv double %conv17, %conv18
  %20 = load ptr, ptr %y_2.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %20, i64 %idxprom20
  store double %div19, ptr %arrayidx21, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %22 = load i32, ptr %j, align 4
  %23 = load i32, ptr %n.addr, align 4
  %cmp23 = icmp slt i32 %22, %23
  br i1 %cmp23, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond22
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %24, %25
  %26 = load i32, ptr %n.addr, align 4
  %rem26 = srem i32 %mul, %26
  %conv27 = sitofp i32 %rem26 to double
  %27 = load i32, ptr %n.addr, align 4
  %conv28 = sitofp i32 %27 to double
  %div29 = fdiv double %conv27, %conv28
  %28 = load ptr, ptr %A.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %29 to i64
  %arrayidx31 = getelementptr inbounds [2000 x double], ptr %28, i64 %idxprom30
  %30 = load i32, ptr %j, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [2000 x double], ptr %arrayidx31, i64 0, i64 %idxprom32
  store double %div29, ptr %arrayidx33, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body25
  %31 = load i32, ptr %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond22, !llvm.loop !6

for.end:                                          ; preds = %for.cond22
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %32 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end36:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_mvt(i32 noundef %n, ptr noundef %x1, ptr noundef %x2, ptr noundef %y_1, ptr noundef %y_2, ptr noundef %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca ptr, align 8
  %x2.addr = alloca ptr, align 8
  %y_1.addr = alloca ptr, align 8
  %y_2.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %x1, ptr %x1.addr, align 8
  store ptr %x2, ptr %x2.addr, align 8
  store ptr %y_1, ptr %y_1.addr, align 8
  store ptr %y_2, ptr %y_2.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %x1.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom
  %6 = load double, ptr %arrayidx, align 8
  %7 = load ptr, ptr %A.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [2000 x double], ptr %7, i64 %idxprom4
  %9 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [2000 x double], ptr %arrayidx5, i64 0, i64 %idxprom6
  %10 = load double, ptr %arrayidx7, align 8
  %11 = load ptr, ptr %y_1.addr, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %11, i64 %idxprom8
  %13 = load double, ptr %arrayidx9, align 8
  %14 = call double @llvm.fmuladd.f64(double %10, double %13, double %6)
  %15 = load ptr, ptr %x1.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds double, ptr %15, i64 %idxprom10
  store double %14, ptr %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %18 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end14:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc34, %for.end14
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %n.addr, align 4
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body17, label %for.end36

for.body17:                                       ; preds = %for.cond15
  store i32 0, ptr %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc31, %for.body17
  %21 = load i32, ptr %j, align 4
  %22 = load i32, ptr %n.addr, align 4
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %for.body20, label %for.end33

for.body20:                                       ; preds = %for.cond18
  %23 = load ptr, ptr %x2.addr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds double, ptr %23, i64 %idxprom21
  %25 = load double, ptr %arrayidx22, align 8
  %26 = load ptr, ptr %A.addr, align 8
  %27 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds [2000 x double], ptr %26, i64 %idxprom23
  %28 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds [2000 x double], ptr %arrayidx24, i64 0, i64 %idxprom25
  %29 = load double, ptr %arrayidx26, align 8
  %30 = load ptr, ptr %y_2.addr, align 8
  %31 = load i32, ptr %j, align 4
  %idxprom27 = sext i32 %31 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %30, i64 %idxprom27
  %32 = load double, ptr %arrayidx28, align 8
  %33 = call double @llvm.fmuladd.f64(double %29, double %32, double %25)
  %34 = load ptr, ptr %x2.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %35 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %34, i64 %idxprom29
  store double %33, ptr %arrayidx30, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.body20
  %36 = load i32, ptr %j, align 4
  %inc32 = add nsw i32 %36, 1
  store i32 %inc32, ptr %j, align 4
  br label %for.cond18, !llvm.loop !11

for.end33:                                        ; preds = %for.cond18
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %37 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %37, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond15, !llvm.loop !12

for.end36:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32 noundef %n, ptr noundef %x1, ptr noundef %x2) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca ptr, align 8
  %x2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %x1, ptr %x1.addr, align 8
  store ptr %x2, ptr %x2.addr, align 8
  %0 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1)
  %1 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.2, ptr noundef @.str.3)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %rem = srem i32 %4, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr @stderr, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load ptr, ptr @stderr, align 8
  %7 = load ptr, ptr %x1.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds double, ptr %7, i64 %idxprom
  %9 = load double, ptr %arrayidx, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.5, double noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr @stderr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.6, ptr noundef @.str.3)
  %12 = load ptr, ptr @stderr, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.2, ptr noundef @.str.7)
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc18, %for.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %n.addr, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body9, label %for.end20

for.body9:                                        ; preds = %for.cond7
  %15 = load i32, ptr %i, align 4
  %rem10 = srem i32 %15, 20
  %cmp11 = icmp eq i32 %rem10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body9
  %16 = load ptr, ptr @stderr, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.4)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body9
  %17 = load ptr, ptr @stderr, align 8
  %18 = load ptr, ptr %x2.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %18, i64 %idxprom15
  %20 = load double, ptr %arrayidx16, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.5, double noundef %20)
  br label %for.inc18

for.inc18:                                        ; preds = %if.end14
  %21 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond7, !llvm.loop !14

for.end20:                                        ; preds = %for.cond7
  %22 = load ptr, ptr @stderr, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.6, ptr noundef @.str.7)
  %23 = load ptr, ptr @stderr, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.8)
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
