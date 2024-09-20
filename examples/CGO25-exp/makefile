POLYGEIST_BUILD_DIR := ../build
MLIR_BUILD_DIR := ../llvm-project/build
MLIR_LIB := /root/intern/buddy-mlir/llvm/build/lib
CROSS_MLIR_BUILD_DIR := /root/intern/buddy-mlir/llvm/build-cross-mlir-rv/
CROSS_MLIR_LIB := ${CROSS_MLIR_BUILD_DIR}/lib
RISCV_GNU_TOOLCHAIN := /root/intern/buddy-mlir/thirdparty/riscv-gnu-toolchain/install
RISCV_GNU_TOOLCHAIN_SYSROOT := /root/intern/buddy-mlir/thirdparty/riscv-gnu-toolchain/install/sysroot
QEMU := /root/intern/buddy-mlir/thirdparty/riscv-gnu-toolchain/qemu/build/qemu-system-riscv64

CGEIST := ${POLYGEIST_BUILD_DIR}/bin/cgeist
POLYGEIST_OPT := ${POLYGEIST_BUILD_DIR}/bin/polygeist-opt
MLIR_OPT := ${MLIR_BUILD_DIR}/bin/mlir-opt
MLIR_TRANSLATE := ${MLIR_BUILD_DIR}/bin/mlir-translate
CLANG := /root/intern/buddy-mlir/llvm/build/bin/clang
LLC := /root/intern/buddy-mlir/llvm/build/bin/llc

resource_dir_path := /root/intern/Polygeist/llvm-project/build/lib/clang/18
test_source_root := /root/intern/Polygeist/tools/cgeist/Test/polybench/utilities

syr2k-c-lower:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine -o syr2k-large-scalar.mlir

syr2k-c-exe:
	@${CLANG} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} \
	-mavx512f -O3 -o syr2k-c

syr2k-c-asm:
	@${CLANG} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c \
	-resource-dir=${resource_dir_path} -I ${test_source_root} \
	-mavx512f -O3 -S -o syr2k-c-unroll-8.ll

mvt-c-lower:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE -D EXTRALARGE_DATASET \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine -o mvt-large-scalar.mlir
