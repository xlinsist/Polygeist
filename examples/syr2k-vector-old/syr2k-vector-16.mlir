#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 ceildiv 16)>
#map2 = affine_map<(d0) -> ((d0 + 1) ceildiv 16)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("%0.6f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  memref.global @polybench_t_end : memref<1xf64> = uninitialized
  memref.global @polybench_t_start : memref<1xf64> = uninitialized
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c1000_i32 = arith.constant 1000 : i32
    %c1200_i32 = arith.constant 1200 : i32
    %alloca = memref.alloca() : memref<1xf64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    %alloca_0 = memref.alloca() : memref<1xf64>
    affine.store %0, %alloca_0[0] : memref<1xf64>
    %alloc = memref.alloc() : memref<1200x1200xf64>
    %alloc_1 = memref.alloc() : memref<1200x1000xf64>
    %alloc_2 = memref.alloc() : memref<1200x1000xf64>
    %cast = memref.cast %alloca_0 : memref<1xf64> to memref<?xf64>
    %cast_3 = memref.cast %alloca : memref<1xf64> to memref<?xf64>
    %cast_4 = memref.cast %alloc : memref<1200x1200xf64> to memref<?x1200xf64>
    %cast_5 = memref.cast %alloc_1 : memref<1200x1000xf64> to memref<?x1000xf64>
    %cast_6 = memref.cast %alloc_2 : memref<1200x1000xf64> to memref<?x1000xf64>
    call @init_array(%c1200_i32, %c1000_i32, %cast, %cast_3, %cast_4, %cast_5, %cast_6) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?x1200xf64>, memref<?x1000xf64>, memref<?x1000xf64>) -> ()
    call @polybench_timer_start() : () -> ()
    %1 = affine.load %alloca_0[0] : memref<1xf64>
    %2 = affine.load %alloca[0] : memref<1xf64>
    %cast_7 = memref.cast %alloc : memref<1200x1200xf64> to memref<?x1200xf64>
    %cast_8 = memref.cast %alloc_1 : memref<1200x1000xf64> to memref<?x1000xf64>
    %cast_9 = memref.cast %alloc_2 : memref<1200x1000xf64> to memref<?x1000xf64>
    call @kernel_syr2k(%c1200_i32, %c1000_i32, %1, %2, %cast_7, %cast_8, %cast_9) : (i32, i32, f64, f64, memref<?x1200xf64>, memref<?x1000xf64>, memref<?x1000xf64>) -> ()
    call @polybench_timer_stop() : () -> ()
    call @polybench_timer_print() : () -> ()
    %result_eval_vec = affine.vector_load %alloc[0, 0] : memref<1200x1200xf64>, vector<20xf64>
    vector.print %result_eval_vec : vector<20xf64>
    memref.dealloc %alloc : memref<1200x1200xf64>
    memref.dealloc %alloc_1 : memref<1200x1000xf64>
    memref.dealloc %alloc_2 : memref<1200x1000xf64>
    return %c0_i32 : i32
  }
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?x1200xf64>, %arg5: memref<?x1000xf64>, %arg6: memref<?x1000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.500000e+00 : f64
    %cst_0 = arith.constant 1.200000e+00 : f64
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c3_i32 = arith.constant 3 : i32
    %0 = arith.index_cast %arg1 : i32 to index
    affine.store %cst, %arg2[0] : memref<?xf64>
    affine.store %cst_0, %arg3[0] : memref<?xf64>
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %1 {
      %3 = arith.index_cast %arg7 : index to i32
      affine.for %arg8 = 0 to %0 {
        %4 = arith.index_cast %arg8 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %7 = arith.remsi %6, %arg0 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.sitofp %arg0 : i32 to f64
        %10 = arith.divf %8, %9 : f64
        memref.store %10, %arg5[%arg7, %arg8] : memref<?x1000xf64>
        %11 = arith.addi %5, %c2_i32 : i32
        %12 = arith.remsi %11, %arg1 : i32
        %13 = arith.sitofp %12 : i32 to f64
        %14 = arith.sitofp %arg1 : i32 to f64
        %15 = arith.divf %13, %14 : f64
        memref.store %15, %arg6[%arg7, %arg8] : memref<?x1000xf64>
      }
    }
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %2 {
      %3 = arith.index_cast %arg7 : index to i32
      affine.for %arg8 = 0 to %2 {
        %4 = arith.index_cast %arg8 : index to i32
        %5 = arith.muli %3, %4 : i32
        %6 = arith.addi %5, %c3_i32 : i32
        %7 = arith.remsi %6, %arg0 : i32
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.sitofp %arg1 : i32 to f64
        %10 = arith.divf %8, %9 : f64
        memref.store %10, %arg4[%arg7, %arg8] : memref<?x1200xf64>
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
  func.func private @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x1200xf64>, %arg5: memref<?x1000xf64>, %arg6: memref<?x1000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c0_f64 = arith.constant 0.0 : f64
    %c0_f64_vec = vector.splat %c0_f64 : vector<16xf64>
    %c1 = arith.constant 1 : index
    %step = arith.constant 16 : index
    %step_vec = arith.constant dense<1000> : vector<16xindex>
    %a_vec = vector.broadcast %arg3 : f64 to vector<16xf64>
    %alpha = vector.broadcast %arg2 : f64 to vector<16xf64>
    %mask_vec = arith.constant dense<1> : vector<16xi1>
    %stride_vec = arith.constant dense<[0, 1000, 2000, 3000, 4000, 5000, 6000, 7000, 0, 1000, 2000, 3000, 4000, 5000, 6000, 7000]> : vector<16xindex>
    %stride_mul_vec = arith.muli %stride_vec, %step_vec : vector<16xindex>

    affine.for %i = 0 to %1 {
      %i_plus_1 = arith.addi %i, %c1 : index
      affine.for %j = 0 to #map2(%i) {
        %j_cur = arith.muli %j, %step : index
        %tail_len = arith.subi %i_plus_1, %j_cur : index
        %tail_flag = arith.cmpi sge, %tail_len, %step : index
        scf.if %tail_flag {
          %b_vec = affine.vector_load %arg4[%i, %j] : memref<?x1200xf64>, vector<16xf64>
          %result_vec = arith.mulf %b_vec, %a_vec : vector<16xf64>
          affine.vector_store %result_vec, %arg4[%i, %j] : memref<?x1200xf64>, vector<16xf64>
        } else {
          %mask_tail_vec = vector.create_mask %tail_len : vector<16xi1>
          %b_vec_tail = vector.maskedload %arg4[%i, %j], %mask_tail_vec, %c0_f64_vec : memref<?x1200xf64>, vector<16xi1>, vector<16xf64> into vector<16xf64>
          %result_vec_tail = arith.mulf %b_vec_tail, %a_vec : vector<16xf64>
          vector.maskedstore %arg4[%i, %j], %mask_tail_vec, %result_vec_tail : memref<?x1200xf64>, vector<16xi1>, vector<16xf64>
        }
      }
      affine.for %k = 0 to %0 {
        %Aik_ele = affine.load %arg5[%i, %k] : memref<?x1000xf64>
        %Bik_ele = affine.load %arg6[%i, %k] : memref<?x1000xf64>
        %Aik = vector.broadcast %Aik_ele : f64 to vector<16xf64>
        %Bik = vector.broadcast %Bik_ele : f64 to vector<16xf64>
        affine.for %j = 0 to #map2(%i) {
          %k_cur = arith.muli %k, %step : index
          %tail_len = arith.subi %0, %k_cur : index
          %tail_flag = arith.cmpi sge, %tail_len, %step : index
          scf.if %tail_flag {
            %Ajk = vector.gather %arg5[%j, %k][%stride_mul_vec], %mask_vec, %c0_f64_vec
              : memref<?x1000xf64>, vector<16xindex>, vector<16xi1>, vector<16xf64> into vector<16xf64>
            %Bjk = vector.gather %arg6[%j, %k][%stride_mul_vec], %mask_vec, %c0_f64_vec
              : memref<?x1000xf64>, vector<16xindex>, vector<16xi1>, vector<16xf64> into vector<16xf64>
            %mul1_vec = arith.mulf %alpha, %Ajk : vector<16xf64>
            %mul2_vec = arith.mulf %mul1_vec, %Bik : vector<16xf64>
            %mul3_vec = arith.mulf %alpha, %Bjk : vector<16xf64>
            %fma_vec = vector.fma %mul3_vec, %Aik, %mul2_vec : vector<16xf64>
            %Cij_load = affine.vector_load %arg4[%i, %j] : memref<?x1200xf64>, vector<16xf64>
            %Cij_store = arith.addf %Cij_load, %fma_vec : vector<16xf64>
            affine.vector_store %Cij_store, %arg4[%i, %j] : memref<?x1200xf64>, vector<16xf64>
          } else {
            // tail processing
          }
        }
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

