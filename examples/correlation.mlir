#map = affine_map<(d0) -> (d0 + 1)>
// module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  // llvm.mlir.global internal constant @str12("Error return from gettimeofday: %d\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str11("%0.6f\0A\00") {addr_space = 0 : i32}
  // llvm.func @printf(!llvm.ptr, ...) -> i32
  // memref.global @polybench_t_end : memref<1xf64> = uninitialized
  // memref.global @polybench_t_start : memref<1xf64> = uninitialized
  // llvm.mlir.global internal constant @str10("void polybench_flush_cache()\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str9("/root/intern/Polygeist/tools/cgeist/Test/polybench/utilities/polybench.c\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str8("tmp <= 10.0\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str5("%0.2lf \00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str4("\0A\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str3("corr\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str2("begin dump: %s\00") {addr_space = 0 : i32}
  // llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00") {addr_space = 0 : i32}
  // llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
  // llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  // llvm.mlir.global internal constant @str0("\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 37.416573867739416 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %cst_2 = arith.constant 1.000000e-01 : f64
    %cst_3 = arith.constant 1.400000e+03 : f64
    %cst_4 = arith.constant 1.200000e+03 : f64
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c1200_i32 = arith.constant 1200 : i32
    %alloc = memref.alloc() : memref<1400x1200xf64>
    %alloc_5 = memref.alloc() : memref<1200x1200xf64>
    %alloc_6 = memref.alloc() : memref<1200xf64>
    %alloc_7 = memref.alloc() : memref<1200xf64>
    affine.for %arg2 = 0 to 1400 {
      %10 = arith.index_cast %arg2 : index to i32
      %11 = arith.sitofp %10 : i32 to f64
      affine.for %arg3 = 0 to 1200 {
        %12 = arith.index_cast %arg3 : index to i32
        %13 = arith.muli %10, %12 : i32
        %14 = arith.sitofp %13 : i32 to f64
        %15 = arith.divf %14, %cst_4 : f64
        %16 = arith.addf %15, %11 : f64
        memref.store %16, %alloc[%arg2, %arg3] : memref<1400x1200xf64>
      }
    }

    // %0 = memref.get_global @polybench_t_start : memref<1xf64>
    // %1 = call @rtclock() : () -> f64
    // affine.store %1, %0[0] : memref<1xf64>
    %cast = memref.cast %alloc_5 : memref<1200x1200xf64> to memref<?x1200xf64>
    affine.for %arg2 = 0 to 1200 {
      affine.store %cst_1, %alloc_6[%arg2] : memref<1200xf64>
      %10 = arith.index_cast %arg2 : index to i32
      affine.for %arg3 = 0 to 1400 {
        %13 = arith.index_cast %arg3 : index to i32
        %14 = arith.muli %13, %10 : i32
        %15 = arith.sitofp %14 : i32 to f64
        %16 = arith.divf %15, %cst_4 : f64
        %17 = arith.sitofp %13 : i32 to f64
        %18 = arith.addf %16, %17 : f64
        %19 = affine.load %alloc_6[%arg2] : memref<1200xf64>
        %20 = arith.addf %19, %18 : f64
        affine.store %20, %alloc_6[%arg2] : memref<1200xf64>
      }
      %11 = affine.load %alloc_6[%arg2] : memref<1200xf64>
      %12 = arith.divf %11, %cst_3 : f64
      affine.store %12, %alloc_6[%arg2] : memref<1200xf64>
    }
    affine.for %arg2 = 0 to 1200 {
      affine.store %cst_1, %alloc_7[%arg2] : memref<1200xf64>
      %10 = arith.index_cast %arg2 : index to i32
      %11 = affine.load %alloc_6[%arg2] : memref<1200xf64>
      affine.for %arg3 = 0 to 1400 {
        %17 = arith.index_cast %arg3 : index to i32
        %18 = arith.muli %17, %10 : i32
        %19 = arith.sitofp %18 : i32 to f64
        %20 = arith.divf %19, %cst_4 : f64
        %21 = arith.sitofp %17 : i32 to f64
        %22 = arith.addf %20, %21 : f64
        %23 = arith.subf %22, %11 : f64
        %24 = arith.mulf %23, %23 : f64
        %25 = affine.load %alloc_7[%arg2] : memref<1200xf64>
        %26 = arith.addf %25, %24 : f64
        affine.store %26, %alloc_7[%arg2] : memref<1200xf64>
      }
      %12 = affine.load %alloc_7[%arg2] : memref<1200xf64>
      %13 = arith.divf %12, %cst_3 : f64
      %14 = math.sqrt %13 : f64
      %15 = arith.cmpf ole, %14, %cst_2 : f64
      %16 = arith.select %15, %cst_0, %14 : f64
      affine.store %16, %alloc_7[%arg2] : memref<1200xf64>
    }
    affine.for %arg2 = 0 to 1400 {
      affine.for %arg3 = 0 to 1200 {
        %10 = affine.load %alloc_6[%arg3] : memref<1200xf64>
        %11 = affine.load %alloc[%arg2, %arg3] : memref<1400x1200xf64>
        %12 = arith.subf %11, %10 : f64
        affine.store %12, %alloc[%arg2, %arg3] : memref<1400x1200xf64>
        %13 = affine.load %alloc_7[%arg3] : memref<1200xf64>
        %14 = arith.mulf %13, %cst : f64
        %15 = arith.divf %12, %14 : f64
        affine.store %15, %alloc[%arg2, %arg3] : memref<1400x1200xf64>
      }
    }
    affine.for %arg2 = 0 to 1199 {
      affine.store %cst_0, %alloc_5[%arg2, %arg2] : memref<1200x1200xf64>
      affine.for %arg3 = #map(%arg2) to 1200 {
        affine.store %cst_1, %alloc_5[%arg2, %arg3] : memref<1200x1200xf64>
        affine.for %arg4 = 0 to 1400 {
          %11 = affine.load %alloc[%arg4, %arg2] : memref<1400x1200xf64>
          %12 = affine.load %alloc[%arg4, %arg3] : memref<1400x1200xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = affine.load %alloc_5[%arg2, %arg3] : memref<1200x1200xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %alloc_5[%arg2, %arg3] : memref<1200x1200xf64>
        }
        %10 = affine.load %alloc_5[%arg2, %arg3] : memref<1200x1200xf64>
        affine.store %10, %alloc_5[%arg3, %arg2] : memref<1200x1200xf64>
      }
    }
    affine.store %cst_0, %alloc_5[1199, 1199] : memref<1200x1200xf64>
    // %2 = memref.get_global @polybench_t_end : memref<1xf64>
    // %3 = call @rtclock() : () -> f64
    // affine.store %3, %2[0] : memref<1xf64>
    // %4 = llvm.mlir.addressof @str11 : !llvm.ptr
    // %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x i8>
    // %6 = affine.load %0[0] : memref<1xf64>
    // %7 = arith.subf %3, %6 : f64
    // %8 = llvm.call @printf(%5, %7) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    // %9 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    // scf.if %9 {
    //   %10 = affine.load %arg1[0] : memref<?xmemref<?xi8>>
    //   %11 = llvm.mlir.addressof @str0 : !llvm.ptr
    //   %12 = "polygeist.pointer2memref"(%11) : (!llvm.ptr) -> memref<?xi8>
    //   %13 = func.call @strcmp(%10, %12) : (memref<?xi8>, memref<?xi8>) -> i32
    //   %14 = arith.cmpi eq, %13, %c0_i32 : i32
    //   scf.if %14 {
    //     func.call @print_array(%c1200_i32, %cast) : (i32, memref<?x1200xf64>) -> ()
    //   }
    // }
    memref.dealloc %alloc : memref<1400x1200xf64>
    memref.dealloc %alloc_5 : memref<1200x1200xf64>
    memref.dealloc %alloc_6 : memref<1200xf64>
    memref.dealloc %alloc_7 : memref<1200xf64>
    return %c0_i32 : i32
  }
  // func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  
  // func.func private @gettimeofday(memref<?x2xi64>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
// }

