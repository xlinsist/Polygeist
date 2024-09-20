module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("%0.6f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  memref.global @polybench_t_end : memref<1xf64> = uninitialized
  memref.global @polybench_t_start : memref<1xf64> = uninitialized
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c2000_i32 = arith.constant 2000 : i32
    %alloc = memref.alloc() : memref<2000x2000xf64>
    %alloc_0 = memref.alloc() : memref<2000xf64>
    %alloc_1 = memref.alloc() : memref<2000xf64>
    %alloc_2 = memref.alloc() : memref<2000xf64>
    %alloc_3 = memref.alloc() : memref<2000xf64>
    %cast = memref.cast %alloc_0 : memref<2000xf64> to memref<?xf64>
    %cast_4 = memref.cast %alloc_1 : memref<2000xf64> to memref<?xf64>
    %cast_5 = memref.cast %alloc_2 : memref<2000xf64> to memref<?xf64>
    %cast_6 = memref.cast %alloc_3 : memref<2000xf64> to memref<?xf64>
    %cast_7 = memref.cast %alloc : memref<2000x2000xf64> to memref<?x2000xf64>
    call @init_array(%c2000_i32, %cast, %cast_4, %cast_5, %cast_6, %cast_7) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?x2000xf64>) -> ()
    call @polybench_timer_start() : () -> ()
    %cast_8 = memref.cast %alloc_0 : memref<2000xf64> to memref<?xf64>
    %cast_9 = memref.cast %alloc_1 : memref<2000xf64> to memref<?xf64>
    %cast_10 = memref.cast %alloc_2 : memref<2000xf64> to memref<?xf64>
    %cast_11 = memref.cast %alloc_3 : memref<2000xf64> to memref<?xf64>
    %cast_12 = memref.cast %alloc : memref<2000x2000xf64> to memref<?x2000xf64>
    call @kernel_mvt(%c2000_i32, %cast_8, %cast_9, %cast_10, %cast_11, %cast_12) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?x2000xf64>) -> ()
    call @polybench_timer_stop() : () -> ()
    call @polybench_timer_print() : () -> ()
    memref.dealloc %alloc : memref<2000x2000xf64>
    memref.dealloc %alloc_0 : memref<2000xf64>
    memref.dealloc %alloc_1 : memref<2000xf64>
    memref.dealloc %alloc_2 : memref<2000xf64>
    memref.dealloc %alloc_3 : memref<2000xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x2000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %0 {
      %1 = arith.index_cast %arg6 : index to i32
      %2 = arith.remsi %1, %arg0 : i32
      %3 = arith.sitofp %2 : i32 to f64
      %4 = arith.sitofp %arg0 : i32 to f64
      %5 = arith.divf %3, %4 : f64
      memref.store %5, %arg1[%arg6] : memref<?xf64>
      %6 = arith.addi %1, %c1_i32 : i32
      %7 = arith.remsi %6, %arg0 : i32
      %8 = arith.sitofp %7 : i32 to f64
      %9 = arith.divf %8, %4 : f64
      memref.store %9, %arg2[%arg6] : memref<?xf64>
      %10 = arith.addi %1, %c3_i32 : i32
      %11 = arith.remsi %10, %arg0 : i32
      %12 = arith.sitofp %11 : i32 to f64
      %13 = arith.divf %12, %4 : f64
      memref.store %13, %arg3[%arg6] : memref<?xf64>
      %14 = arith.addi %1, %c4_i32 : i32
      %15 = arith.remsi %14, %arg0 : i32
      %16 = arith.sitofp %15 : i32 to f64
      %17 = arith.divf %16, %4 : f64
      memref.store %17, %arg4[%arg6] : memref<?xf64>
      affine.for %arg7 = 0 to %0 {
        %18 = arith.index_cast %arg7 : index to i32
        %19 = arith.muli %1, %18 : i32
        %20 = arith.remsi %19, %arg0 : i32
        %21 = arith.sitofp %20 : i32 to f64
        %22 = arith.divf %21, %4 : f64
        memref.store %22, %arg5[%arg6, %arg7] : memref<?x2000xf64>
      }
    }
    return
  }
  func.func @polybench_timer_start() attributes {llvm.linkage = #llvm.linkage<external>} {
    call @polybench_prepare_instruments() : () -> ()
    %0 = memref.get_global @polybench_t_start : memref<1xf64>
    %1 = call @rtclock() : () -> f64
    affine.store %1, %0[0] : memref<1xf64>
    return
  }
  func.func private @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x2000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %0 {
      affine.for %arg7 = 0 to %0 {
        %1 = affine.load %arg1[%arg6] : memref<?xf64>
        %2 = affine.load %arg5[%arg6, %arg7] : memref<?x2000xf64>
        %3 = affine.load %arg3[%arg7] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %1, %4 : f64
        affine.store %5, %arg1[%arg6] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to %0 {
      affine.for %arg7 = 0 to %0 {
        %1 = affine.load %arg2[%arg6] : memref<?xf64>
        %2 = affine.load %arg5[%arg7, %arg6] : memref<?x2000xf64>
        %3 = affine.load %arg4[%arg7] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %1, %4 : f64
        affine.store %5, %arg2[%arg6] : memref<?xf64>
      }
    }
    return
  }
  func.func @polybench_timer_stop() attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = memref.get_global @polybench_t_end : memref<1xf64>
    %1 = call @rtclock() : () -> f64
    affine.store %1, %0[0] : memref<1xf64>
    return
  }
  func.func @polybench_timer_print() attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<7 x i8>
    %2 = memref.get_global @polybench_t_end : memref<1xf64>
    %3 = affine.load %2[0] : memref<1xf64>
    %4 = memref.get_global @polybench_t_start : memref<1xf64>
    %5 = affine.load %4[0] : memref<1xf64>
    %6 = arith.subf %3, %5 : f64
    %7 = llvm.call @printf(%1, %6) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    return
  }
  func.func @polybench_prepare_instruments() attributes {llvm.linkage = #llvm.linkage<external>} {
    return
  }
  func.func private @rtclock() -> f64
}

