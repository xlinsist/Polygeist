; ModuleID = '/root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c'
source_filename = "/root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(32000000) ptr @malloc(i64 noundef 32000000) #6
  %call.i31 = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %call.i32 = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %call.i33 = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %call.i34 = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %for.body.i

for.body.i:                                       ; preds = %middle.block, %entry
  %indvars.iv68.i = phi i64 [ 0, %entry ], [ %indvars.iv.next69.i, %middle.block ]
  %indvars74.i = trunc i64 %indvars.iv68.i to i32
  %conv.i = sitofp i32 %indvars74.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx.i = getelementptr inbounds double, ptr %call.i31, i64 %indvars.iv68.i
  store double %div.i, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1
  %0 = icmp eq i64 %indvars.iv.next69.i, 2000
  %1 = trunc i64 %indvars.iv.next69.i to i32
  %2 = sitofp i32 %1 to double
  %3 = fdiv double %2, 2.000000e+03
  %div5.i = select i1 %0, double 0.000000e+00, double %3
  %arrayidx7.i = getelementptr inbounds double, ptr %call.i32, i64 %indvars.iv68.i
  store double %div5.i, ptr %arrayidx7.i, align 8, !tbaa !5
  %rem962.cmp.i = icmp ult i64 %indvars.iv68.i, 1997
  %rem962.i.v = select i1 %rem962.cmp.i, i32 3, i32 -1997
  %rem962.i = add i32 %rem962.i.v, %indvars74.i
  %conv10.i = sitofp i32 %rem962.i to double
  %div12.i = fdiv double %conv10.i, 2.000000e+03
  %arrayidx14.i = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv68.i
  store double %div12.i, ptr %arrayidx14.i, align 8, !tbaa !5
  %rem1663.cmp.i = icmp ult i64 %indvars.iv68.i, 1996
  %rem1663.i.v = select i1 %rem1663.cmp.i, i32 4, i32 -1996
  %rem1663.i = add i32 %rem1663.i.v, %indvars74.i
  %conv17.i = sitofp i32 %rem1663.i to double
  %div19.i = fdiv double %conv17.i, 2.000000e+03
  %arrayidx21.i = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv68.i
  store double %div19.i, ptr %arrayidx21.i, align 8, !tbaa !5
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv68.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.body.i
  %index = phi i64 [ 0, %for.body.i ], [ %index.next.1, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %for.body.i ], [ %vec.ind.next.1, %vector.body ]
  %4 = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %5 = trunc <4 x i64> %4 to <4 x i32>
  %6 = urem <4 x i32> %5, <i32 2000, i32 2000, i32 2000, i32 2000>
  %7 = sitofp <4 x i32> %6 to <4 x double>
  %8 = fdiv <4 x double> %7, <double 2.000000e+03, double 2.000000e+03, double 2.000000e+03, double 2.000000e+03>
  %9 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv68.i, i64 %index
  store <4 x double> %8, ptr %9, align 8, !tbaa !5
  %index.next = or i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %10 = mul nuw nsw <4 x i64> %vec.ind.next, %broadcast.splat
  %11 = trunc <4 x i64> %10 to <4 x i32>
  %12 = urem <4 x i32> %11, <i32 2000, i32 2000, i32 2000, i32 2000>
  %13 = sitofp <4 x i32> %12 to <4 x double>
  %14 = fdiv <4 x double> %13, <double 2.000000e+03, double 2.000000e+03, double 2.000000e+03, double 2.000000e+03>
  %15 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv68.i, i64 %index.next
  store <4 x double> %14, ptr %15, align 8, !tbaa !5
  %index.next.1 = add nuw nsw i64 %index, 8
  %vec.ind.next.1 = add <4 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8>
  %16 = icmp eq i64 %index.next.1, 2000
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  br i1 %0, label %for.cond1.preheader.i, label %for.body.i, !llvm.loop !13

for.cond1.preheader.i:                            ; preds = %middle.block, %for.inc12.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.inc12.i ], [ 0, %middle.block ]
  %arrayidx.i35 = getelementptr inbounds double, ptr %call.i31, i64 %indvars.iv64.i
  %arrayidx.promoted.i = load double, ptr %arrayidx.i35, align 8, !tbaa !5
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i36 = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i38.7, %for.body3.i ]
  %17 = phi double [ %arrayidx.promoted.i, %for.cond1.preheader.i ], [ %41, %for.body3.i ]
  %arrayidx7.i37 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv64.i, i64 %indvars.iv.i36
  %18 = load double, ptr %arrayidx7.i37, align 8, !tbaa !5
  %arrayidx9.i = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv.i36
  %19 = load double, ptr %arrayidx9.i, align 8, !tbaa !5
  %20 = tail call double @llvm.fmuladd.f64(double %18, double %19, double %17)
  %indvars.iv.next.i38 = or i64 %indvars.iv.i36, 1
  %arrayidx7.i37.1 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv64.i, i64 %indvars.iv.next.i38
  %21 = load double, ptr %arrayidx7.i37.1, align 8, !tbaa !5
  %arrayidx9.i.1 = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv.next.i38
  %22 = load double, ptr %arrayidx9.i.1, align 8, !tbaa !5
  %23 = tail call double @llvm.fmuladd.f64(double %21, double %22, double %20)
  %indvars.iv.next.i38.1 = or i64 %indvars.iv.i36, 2
  %arrayidx7.i37.2 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv64.i, i64 %indvars.iv.next.i38.1
  %24 = load double, ptr %arrayidx7.i37.2, align 8, !tbaa !5
  %arrayidx9.i.2 = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv.next.i38.1
  %25 = load double, ptr %arrayidx9.i.2, align 8, !tbaa !5
  %26 = tail call double @llvm.fmuladd.f64(double %24, double %25, double %23)
  %indvars.iv.next.i38.2 = or i64 %indvars.iv.i36, 3
  %arrayidx7.i37.3 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv64.i, i64 %indvars.iv.next.i38.2
  %27 = load double, ptr %arrayidx7.i37.3, align 8, !tbaa !5
  %arrayidx9.i.3 = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv.next.i38.2
  %28 = load double, ptr %arrayidx9.i.3, align 8, !tbaa !5
  %29 = tail call double @llvm.fmuladd.f64(double %27, double %28, double %26)
  %indvars.iv.next.i38.3 = or i64 %indvars.iv.i36, 4
  %arrayidx7.i37.4 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv64.i, i64 %indvars.iv.next.i38.3
  %30 = load double, ptr %arrayidx7.i37.4, align 8, !tbaa !5
  %arrayidx9.i.4 = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv.next.i38.3
  %31 = load double, ptr %arrayidx9.i.4, align 8, !tbaa !5
  %32 = tail call double @llvm.fmuladd.f64(double %30, double %31, double %29)
  %indvars.iv.next.i38.4 = or i64 %indvars.iv.i36, 5
  %arrayidx7.i37.5 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv64.i, i64 %indvars.iv.next.i38.4
  %33 = load double, ptr %arrayidx7.i37.5, align 8, !tbaa !5
  %arrayidx9.i.5 = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv.next.i38.4
  %34 = load double, ptr %arrayidx9.i.5, align 8, !tbaa !5
  %35 = tail call double @llvm.fmuladd.f64(double %33, double %34, double %32)
  %indvars.iv.next.i38.5 = or i64 %indvars.iv.i36, 6
  %arrayidx7.i37.6 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv64.i, i64 %indvars.iv.next.i38.5
  %36 = load double, ptr %arrayidx7.i37.6, align 8, !tbaa !5
  %arrayidx9.i.6 = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv.next.i38.5
  %37 = load double, ptr %arrayidx9.i.6, align 8, !tbaa !5
  %38 = tail call double @llvm.fmuladd.f64(double %36, double %37, double %35)
  %indvars.iv.next.i38.6 = or i64 %indvars.iv.i36, 7
  %arrayidx7.i37.7 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv64.i, i64 %indvars.iv.next.i38.6
  %39 = load double, ptr %arrayidx7.i37.7, align 8, !tbaa !5
  %arrayidx9.i.7 = getelementptr inbounds double, ptr %call.i33, i64 %indvars.iv.next.i38.6
  %40 = load double, ptr %arrayidx9.i.7, align 8, !tbaa !5
  %41 = tail call double @llvm.fmuladd.f64(double %39, double %40, double %38)
  %indvars.iv.next.i38.7 = add nuw nsw i64 %indvars.iv.i36, 8
  %exitcond.not.i39.7 = icmp eq i64 %indvars.iv.next.i38.7, 2000
  br i1 %exitcond.not.i39.7, label %for.inc12.i, label %for.body3.i, !llvm.loop !14

for.inc12.i:                                      ; preds = %for.body3.i
  store double %41, ptr %arrayidx.i35, align 8, !tbaa !5
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 2000
  br i1 %exitcond67.not.i, label %for.cond18.preheader.i, label %for.cond1.preheader.i, !llvm.loop !15

for.cond18.preheader.i:                           ; preds = %for.inc12.i, %for.inc34.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.inc34.i ], [ 0, %for.inc12.i ]
  %arrayidx22.i = getelementptr inbounds double, ptr %call.i32, i64 %indvars.iv72.i
  %arrayidx22.promoted.i = load double, ptr %arrayidx22.i, align 8, !tbaa !5
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i, %for.cond18.preheader.i
  %indvars.iv68.i40 = phi i64 [ 0, %for.cond18.preheader.i ], [ %indvars.iv.next69.i41.7, %for.body20.i ]
  %42 = phi double [ %arrayidx22.promoted.i, %for.cond18.preheader.i ], [ %66, %for.body20.i ]
  %arrayidx26.i = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv68.i40, i64 %indvars.iv72.i
  %43 = load double, ptr %arrayidx26.i, align 8, !tbaa !5
  %arrayidx28.i = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv68.i40
  %44 = load double, ptr %arrayidx28.i, align 8, !tbaa !5
  %45 = tail call double @llvm.fmuladd.f64(double %43, double %44, double %42)
  %indvars.iv.next69.i41 = or i64 %indvars.iv68.i40, 1
  %arrayidx26.i.1 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv.next69.i41, i64 %indvars.iv72.i
  %46 = load double, ptr %arrayidx26.i.1, align 8, !tbaa !5
  %arrayidx28.i.1 = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv.next69.i41
  %47 = load double, ptr %arrayidx28.i.1, align 8, !tbaa !5
  %48 = tail call double @llvm.fmuladd.f64(double %46, double %47, double %45)
  %indvars.iv.next69.i41.1 = or i64 %indvars.iv68.i40, 2
  %arrayidx26.i.2 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv.next69.i41.1, i64 %indvars.iv72.i
  %49 = load double, ptr %arrayidx26.i.2, align 8, !tbaa !5
  %arrayidx28.i.2 = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv.next69.i41.1
  %50 = load double, ptr %arrayidx28.i.2, align 8, !tbaa !5
  %51 = tail call double @llvm.fmuladd.f64(double %49, double %50, double %48)
  %indvars.iv.next69.i41.2 = or i64 %indvars.iv68.i40, 3
  %arrayidx26.i.3 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv.next69.i41.2, i64 %indvars.iv72.i
  %52 = load double, ptr %arrayidx26.i.3, align 8, !tbaa !5
  %arrayidx28.i.3 = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv.next69.i41.2
  %53 = load double, ptr %arrayidx28.i.3, align 8, !tbaa !5
  %54 = tail call double @llvm.fmuladd.f64(double %52, double %53, double %51)
  %indvars.iv.next69.i41.3 = or i64 %indvars.iv68.i40, 4
  %arrayidx26.i.4 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv.next69.i41.3, i64 %indvars.iv72.i
  %55 = load double, ptr %arrayidx26.i.4, align 8, !tbaa !5
  %arrayidx28.i.4 = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv.next69.i41.3
  %56 = load double, ptr %arrayidx28.i.4, align 8, !tbaa !5
  %57 = tail call double @llvm.fmuladd.f64(double %55, double %56, double %54)
  %indvars.iv.next69.i41.4 = or i64 %indvars.iv68.i40, 5
  %arrayidx26.i.5 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv.next69.i41.4, i64 %indvars.iv72.i
  %58 = load double, ptr %arrayidx26.i.5, align 8, !tbaa !5
  %arrayidx28.i.5 = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv.next69.i41.4
  %59 = load double, ptr %arrayidx28.i.5, align 8, !tbaa !5
  %60 = tail call double @llvm.fmuladd.f64(double %58, double %59, double %57)
  %indvars.iv.next69.i41.5 = or i64 %indvars.iv68.i40, 6
  %arrayidx26.i.6 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv.next69.i41.5, i64 %indvars.iv72.i
  %61 = load double, ptr %arrayidx26.i.6, align 8, !tbaa !5
  %arrayidx28.i.6 = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv.next69.i41.5
  %62 = load double, ptr %arrayidx28.i.6, align 8, !tbaa !5
  %63 = tail call double @llvm.fmuladd.f64(double %61, double %62, double %60)
  %indvars.iv.next69.i41.6 = or i64 %indvars.iv68.i40, 7
  %arrayidx26.i.7 = getelementptr inbounds [2000 x double], ptr %call.i, i64 %indvars.iv.next69.i41.6, i64 %indvars.iv72.i
  %64 = load double, ptr %arrayidx26.i.7, align 8, !tbaa !5
  %arrayidx28.i.7 = getelementptr inbounds double, ptr %call.i34, i64 %indvars.iv.next69.i41.6
  %65 = load double, ptr %arrayidx28.i.7, align 8, !tbaa !5
  %66 = tail call double @llvm.fmuladd.f64(double %64, double %65, double %63)
  %indvars.iv.next69.i41.7 = add nuw nsw i64 %indvars.iv68.i40, 8
  %exitcond71.not.i.7 = icmp eq i64 %indvars.iv.next69.i41.7, 2000
  br i1 %exitcond71.not.i.7, label %for.inc34.i, label %for.body20.i, !llvm.loop !16

for.inc34.i:                                      ; preds = %for.body20.i
  store double %66, ptr %arrayidx22.i, align 8, !tbaa !5
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  %exitcond75.not.i42 = icmp eq i64 %indvars.iv.next73.i, 2000
  br i1 %exitcond75.not.i42, label %kernel_mvt.exit, label %for.cond18.preheader.i, !llvm.loop !17

kernel_mvt.exit:                                  ; preds = %for.inc34.i
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_mvt.exit
  %67 = load ptr, ptr %argv, align 8, !tbaa !18
  %strcmpload = load i8, ptr %67, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %68 = load ptr, ptr @stderr, align 8, !tbaa !18
  %69 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 22, i64 1, ptr %68) #7
  %70 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  br label %for.body.i43

for.body.i43:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i44 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i46, %if.end.i ]
  %rem.lhs.trunc.i = trunc i64 %indvars.iv.i44 to i16
  %rem32.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem32.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i43
  %71 = load ptr, ptr @stderr, align 8, !tbaa !18
  %fputc31.i = tail call i32 @fputc(i32 10, ptr %71)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i43
  %72 = load ptr, ptr @stderr, align 8, !tbaa !18
  %arrayidx.i45 = getelementptr inbounds double, ptr %call.i31, i64 %indvars.iv.i44
  %73 = load double, ptr %arrayidx.i45, align 8, !tbaa !5
  %call4.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.5, double noundef %73) #7
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i44, 1
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 2000
  br i1 %exitcond.not.i47, label %for.end.i, label %for.body.i43, !llvm.loop !20

for.end.i:                                        ; preds = %if.end.i
  %74 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call5.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #7
  %75 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call6.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #7
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end14.i, %for.end.i
  %indvars.iv37.i = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next38.i, %if.end14.i ]
  %rem10.lhs.trunc.i = trunc i64 %indvars.iv37.i to i16
  %rem1033.i = urem i16 %rem10.lhs.trunc.i, 20
  %cmp11.i = icmp eq i16 %rem1033.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %for.body9.i
  %76 = load ptr, ptr @stderr, align 8, !tbaa !18
  %fputc.i = tail call i32 @fputc(i32 10, ptr %76)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %for.body9.i
  %77 = load ptr, ptr @stderr, align 8, !tbaa !18
  %arrayidx16.i = getelementptr inbounds double, ptr %call.i32, i64 %indvars.iv37.i
  %78 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %call17.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.5, double noundef %78) #7
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next38.i, 2000
  br i1 %exitcond40.not.i, label %print_array.exit, label %for.body9.i, !llvm.loop !21

print_array.exit:                                 ; preds = %if.end14.i
  %79 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call21.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7
  %80 = load ptr, ptr @stderr, align 8, !tbaa !18
  %81 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %80) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_mvt.exit
  tail call void @free(ptr noundef %call.i) #8
  tail call void @free(ptr noundef %call.i31) #8
  tail call void @free(ptr noundef nonnull %call.i32) #8
  tail call void @free(ptr noundef %call.i33) #8
  tail call void @free(ptr noundef %call.i34) #8
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx10.1-256,-avx10.1-512,-avx512bf16,-avx512bitalg,-avx512er,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-clzero,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpid,-rdpru,-rtm,-serialize,-sgx,-sha,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx10.1-256,-avx10.1-512,-avx512bf16,-avx512bitalg,-avx512er,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-clzero,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpid,-rdpru,-rtm,-serialize,-sgx,-sha,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx10.1-256,-avx10.1-512,-avx512bf16,-avx512bitalg,-avx512er,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-clzero,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpid,-rdpru,-rtm,-serialize,-sgx,-sha,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx10.1-256,-avx10.1-512,-avx512bf16,-avx512bitalg,-avx512er,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-clzero,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpid,-rdpru,-rtm,-serialize,-sgx,-sha,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { cold }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 6c59f0e1b0fb56c909ad7c9aad4bde37dc006ae0)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
