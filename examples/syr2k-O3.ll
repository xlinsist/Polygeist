; ModuleID = '/root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c'
source_filename = "/root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind memory(readwrite, argmem: none) uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(11520000) ptr @malloc(i64 noundef 11520000) #6
  %call.i16 = tail call noalias dereferenceable_or_null(9600000) ptr @malloc(i64 noundef 9600000) #6
  %call.i17 = tail call noalias dereferenceable_or_null(9600000) ptr @malloc(i64 noundef 9600000) #6
  br label %vector.ph

vector.ph:                                        ; preds = %entry, %for.inc17.i
  %indvars.iv78.i = phi i64 [ 0, %entry ], [ %indvars.iv.next79.i, %for.inc17.i ]
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %indvars.iv78.i, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %0 = mul nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %1 = trunc <8 x i64> %0 to <8 x i32>
  %2 = add <8 x i32> %1, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %3 = urem <8 x i32> %2, <i32 1200, i32 1200, i32 1200, i32 1200, i32 1200, i32 1200, i32 1200, i32 1200>
  %4 = sitofp <8 x i32> %3 to <8 x double>
  %5 = fdiv <8 x double> %4, <double 1.200000e+03, double 1.200000e+03, double 1.200000e+03, double 1.200000e+03, double 1.200000e+03, double 1.200000e+03, double 1.200000e+03, double 1.200000e+03>
  %6 = getelementptr inbounds [1000 x double], ptr %call.i16, i64 %indvars.iv78.i, i64 %index
  store <8 x double> %5, ptr %6, align 8, !tbaa !5
  %7 = add <8 x i32> %1, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %8 = urem <8 x i32> %7, <i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000>
  %9 = sitofp <8 x i32> %8 to <8 x double>
  %10 = fdiv <8 x double> %9, <double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03>
  %11 = getelementptr inbounds [1000 x double], ptr %call.i17, i64 %indvars.iv78.i, i64 %index
  store <8 x double> %10, ptr %11, align 8, !tbaa !5
  %index.next = add nuw i64 %index, 8
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %12 = icmp eq i64 %index.next, 1000
  br i1 %12, label %for.inc17.i, label %vector.body, !llvm.loop !9

for.inc17.i:                                      ; preds = %vector.body
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next79.i, 1200
  br i1 %exitcond81.not.i, label %vector.ph26, label %vector.ph, !llvm.loop !13

vector.ph26:                                      ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert32 = insertelement <8 x i64> poison, i64 %indvars.iv88.i, i64 0
  %broadcast.splat33 = shufflevector <8 x i64> %broadcast.splatinsert32, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next34, %vector.body28 ]
  %vec.ind30 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph26 ], [ %vec.ind.next31, %vector.body28 ]
  %13 = mul nuw nsw <8 x i64> %vec.ind30, %broadcast.splat33
  %14 = trunc <8 x i64> %13 to <8 x i32>
  %15 = add <8 x i32> %14, <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %16 = urem <8 x i32> %15, <i32 1200, i32 1200, i32 1200, i32 1200, i32 1200, i32 1200, i32 1200, i32 1200>
  %17 = sitofp <8 x i32> %16 to <8 x double>
  %18 = fdiv <8 x double> %17, <double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1200 x double], ptr %call.i, i64 %indvars.iv88.i, i64 %index29
  store <8 x double> %18, ptr %19, align 8, !tbaa !5
  %index.next34 = add nuw i64 %index29, 8
  %vec.ind.next31 = add <8 x i64> %vec.ind30, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %20 = icmp eq i64 %index.next34, 1200
  br i1 %20, label %for.inc41.i, label %vector.body28, !llvm.loop !14

for.inc41.i:                                      ; preds = %vector.body28
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next89.i, 1200
  br i1 %exitcond91.not.i, label %for.cond1.preheader.i18, label %vector.ph26, !llvm.loop !15

for.cond1.preheader.i18:                          ; preds = %for.inc41.i, %for.inc42.i
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %for.inc42.i ], [ 0, %for.inc41.i ]
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %for.inc42.i ], [ 1, %for.inc41.i ]
  %min.iters.check51 = icmp ult i64 %indvars.iv84.i, 32
  br i1 %min.iters.check51, label %for.body3.i19.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %for.cond1.preheader.i18
  %n.vec54 = and i64 %indvars.iv84.i, 9223372036854775776
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph52
  %index58 = phi i64 [ 0, %vector.ph52 ], [ %index.next63, %vector.body57 ]
  %21 = getelementptr inbounds [1200 x double], ptr %call.i, i64 %indvars.iv86.i, i64 %index58
  %wide.load59 = load <8 x double>, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds double, ptr %21, i64 8
  %wide.load60 = load <8 x double>, ptr %22, align 8, !tbaa !5
  %23 = getelementptr inbounds double, ptr %21, i64 16
  %wide.load61 = load <8 x double>, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds double, ptr %21, i64 24
  %wide.load62 = load <8 x double>, ptr %24, align 8, !tbaa !5
  %25 = fmul <8 x double> %wide.load59, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %26 = fmul <8 x double> %wide.load60, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %27 = fmul <8 x double> %wide.load61, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %28 = fmul <8 x double> %wide.load62, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  store <8 x double> %25, ptr %21, align 8, !tbaa !5
  store <8 x double> %26, ptr %22, align 8, !tbaa !5
  store <8 x double> %27, ptr %23, align 8, !tbaa !5
  store <8 x double> %28, ptr %24, align 8, !tbaa !5
  %index.next63 = add nuw i64 %index58, 32
  %29 = icmp eq i64 %index.next63, %n.vec54
  br i1 %29, label %middle.block49, label %vector.body57, !llvm.loop !16

middle.block49:                                   ; preds = %vector.body57
  %cmp.n56 = icmp eq i64 %indvars.iv84.i, %n.vec54
  br i1 %cmp.n56, label %for.cond9.preheader.i.preheader, label %for.body3.i19.preheader

for.body3.i19.preheader:                          ; preds = %for.cond1.preheader.i18, %middle.block49
  %indvars.iv.i20.ph = phi i64 [ 0, %for.cond1.preheader.i18 ], [ %n.vec54, %middle.block49 ]
  br label %for.body3.i19

for.body3.i19:                                    ; preds = %for.body3.i19.preheader, %for.body3.i19
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i21, %for.body3.i19 ], [ %indvars.iv.i20.ph, %for.body3.i19.preheader ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], ptr %call.i, i64 %indvars.iv86.i, i64 %indvars.iv.i20
  %30 = load double, ptr %arrayidx5.i, align 8, !tbaa !5
  %mul.i = fmul double %30, 1.200000e+00
  store double %mul.i, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i20, 1
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, %indvars.iv84.i
  br i1 %exitcond.not.i22, label %for.cond9.preheader.i.preheader, label %for.body3.i19, !llvm.loop !17

for.cond9.preheader.i.preheader:                  ; preds = %for.body3.i19, %middle.block49
  %min.iters.check = icmp ult i64 %indvars.iv84.i, 8
  %n.vec = and i64 %indvars.iv84.i, 9223372036854775800
  %cmp.n = icmp eq i64 %indvars.iv84.i, %n.vec
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond9.preheader.i.preheader, %for.inc39.i
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %for.inc39.i ], [ 0, %for.cond9.preheader.i.preheader ]
  %arrayidx20.i = getelementptr inbounds [1000 x double], ptr %call.i17, i64 %indvars.iv86.i, i64 %indvars.iv80.i
  %arrayidx30.i = getelementptr inbounds [1000 x double], ptr %call.i16, i64 %indvars.iv86.i, i64 %indvars.iv80.i
  %31 = load double, ptr %arrayidx20.i, align 8, !tbaa !5
  %32 = load double, ptr %arrayidx30.i, align 8, !tbaa !5
  br i1 %min.iters.check, label %for.body11.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %for.cond9.preheader.i
  %broadcast.splatinsert44 = insertelement <8 x double> poison, double %32, i64 0
  %broadcast.splat45 = shufflevector <8 x double> %broadcast.splatinsert44, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <8 x double> poison, double %31, i64 0
  %broadcast.splat47 = shufflevector <8 x double> %broadcast.splatinsert46, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next48, %vector.body39 ]
  %vec.ind41 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph37 ], [ %vec.ind.next42, %vector.body39 ]
  %33 = getelementptr inbounds [1000 x double], ptr %call.i16, <8 x i64> %vec.ind41, i64 %indvars.iv80.i
  %wide.masked.gather = tail call <8 x double> @llvm.masked.gather.v8f64.v8p0(<8 x ptr> %33, i32 8, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x double> poison), !tbaa !5
  %34 = fmul <8 x double> %wide.masked.gather, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %35 = getelementptr inbounds [1000 x double], ptr %call.i17, <8 x i64> %vec.ind41, i64 %indvars.iv80.i
  %wide.masked.gather43 = tail call <8 x double> @llvm.masked.gather.v8f64.v8p0(<8 x ptr> %35, i32 8, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x double> poison), !tbaa !5
  %36 = fmul <8 x double> %wide.masked.gather43, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %37 = fmul <8 x double> %36, %broadcast.splat45
  %38 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %34, <8 x double> %broadcast.splat47, <8 x double> %37)
  %39 = getelementptr inbounds [1200 x double], ptr %call.i, i64 %indvars.iv86.i, i64 %index40
  %wide.load = load <8 x double>, ptr %39, align 8, !tbaa !5
  %40 = fadd <8 x double> %wide.load, %38
  store <8 x double> %40, ptr %39, align 8, !tbaa !5
  %index.next48 = add nuw i64 %index40, 8
  %vec.ind.next42 = add <8 x i64> %vec.ind41, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %41 = icmp eq i64 %index.next48, %n.vec
  br i1 %41, label %middle.block35, label %vector.body39, !llvm.loop !18

middle.block35:                                   ; preds = %vector.body39
  br i1 %cmp.n, label %for.inc39.i, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.cond9.preheader.i, %middle.block35
  %indvars.iv75.i.ph = phi i64 [ 0, %for.cond9.preheader.i ], [ %n.vec, %middle.block35 ]
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %for.body11.i ], [ %indvars.iv75.i.ph, %for.body11.i.preheader ]
  %arrayidx15.i = getelementptr inbounds [1000 x double], ptr %call.i16, i64 %indvars.iv75.i, i64 %indvars.iv80.i
  %42 = load double, ptr %arrayidx15.i, align 8, !tbaa !5
  %mul16.i = fmul double %42, 1.500000e+00
  %arrayidx25.i = getelementptr inbounds [1000 x double], ptr %call.i17, i64 %indvars.iv75.i, i64 %indvars.iv80.i
  %43 = load double, ptr %arrayidx25.i, align 8, !tbaa !5
  %mul26.i = fmul double %43, 1.500000e+00
  %mul31.i = fmul double %mul26.i, %32
  %44 = tail call double @llvm.fmuladd.f64(double %mul16.i, double %31, double %mul31.i)
  %arrayidx35.i = getelementptr inbounds [1200 x double], ptr %call.i, i64 %indvars.iv86.i, i64 %indvars.iv75.i
  %45 = load double, ptr %arrayidx35.i, align 8, !tbaa !5
  %add.i = fadd double %45, %44
  store double %add.i, ptr %arrayidx35.i, align 8, !tbaa !5
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, %indvars.iv84.i
  br i1 %exitcond79.not.i, label %for.inc39.i, label %for.body11.i, !llvm.loop !19

for.inc39.i:                                      ; preds = %for.body11.i, %middle.block35
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next81.i, 1000
  br i1 %exitcond83.not.i, label %for.inc42.i, label %for.cond9.preheader.i, !llvm.loop !20

for.inc42.i:                                      ; preds = %for.inc39.i
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1
  %exitcond91.not.i23 = icmp eq i64 %indvars.iv.next87.i, 1200
  br i1 %exitcond91.not.i23, label %kernel_syr2k.exit, label %for.cond1.preheader.i18, !llvm.loop !21

kernel_syr2k.exit:                                ; preds = %for.inc42.i
  tail call void @free(ptr noundef nonnull %call.i) #7
  tail call void @free(ptr noundef nonnull %call.i16) #7
  tail call void @free(ptr noundef nonnull %call.i17) #7
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x double> @llvm.masked.gather.v8f64.v8p0(<8 x ptr>, i32 immarg, <8 x i1>, <8 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #5

attributes #0 = { nounwind memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !12, !11}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !12, !11}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
