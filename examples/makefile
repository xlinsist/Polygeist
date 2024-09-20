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
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE -D LARGE_DATASET \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine > syr2k-large-scalar.mlir

syr2k-vector-run:
	@${MLIR_OPT} ./syr2k-vector-128.mlir \
		-convert-vector-to-scf \
		-lower-affine \
		-convert-scf-to-cf \
		-convert-vector-to-llvm \
		-convert-index-to-llvm \
		-finalize-memref-to-llvm \
		-convert-func-to-llvm \
		-reconcile-unrealized-casts | \
	${MLIR_TRANSLATE} --mlir-to-llvmir -o log.ll
	@${CLANG} log.ll \
		-target x86_64-unknown-linux-gnu \
		-L${MLIR_LIB} -lmlir_runner_utils -lmlir_c_runner_utils \
		-o ./sry2k-vector-128
	@LD_LIBRARY_PATH=${MLIR_LIB} ./sry2k-vector-128 > log.txt

syr2k-generate-asm-O3:
	@${CLANG} -S /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c \
	-I ${test_source_root} -mavx512f -O3 -o syr2k-O3-avx512.s

syr2k-generate-llvm:
	@${CLANG} -emit-llvm -S /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c \
	-I ${test_source_root} -mavx512f -O3 -o syr2k-O3.ll

syr2k-generate-llvm-exe:
	@${CLANG} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} \
	-mavx512f -O3 -o syr2k-llvm

syr2k-generate-llvm-O0-exe:
	@${CLANG} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} \
	-O0 -o syr2k-llvm-O0

syr2k-generate-llvm-O0:
	@${CLANG} -emit-llvm -S /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syr2k/syr2k.c \
	-I ${test_source_root} -O0 -o syr2k-O0.ll

syr2k-generate-mlir-asm-O3:
	@$(MLIR_OPT) syr2k-vector-128.mlir  \
		--convert-vector-to-scf --lower-affine --convert-scf-to-cf \
		--convert-vector-to-llvm --finalize-memref-to-llvm --convert-func-to-llvm \
		--reconcile-unrealized-casts | \
	${MLIR_TRANSLATE} --mlir-to-llvmir -o log.ll
	@${CLANG} -S log.ll -mavx512f -O3 -o syr2k-mlir-O3-avx512-vs128.s

symm-c-lower:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/symm/symm.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine > log.mlir

syrk-c-lower:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/blas/syrk/syrk.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine > log.mlir

mvt-generate:
	@${CLANG} -S /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c \
	-I ${test_source_root} -mavx512f -O3 -o mvt-O3-avx512.s

2mm-c-lower:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/2mm/2mm.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine > log.mlir

3mm-c-lower:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/3mm/3mm.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine > log.mlir

correlation-c-lower:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/datamining/correlation/correlation.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0 -S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine > log.mlir

mvt-c-lower:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root} -O0	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine > log.mlir

mvt-c-run-cgeist:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE -D MINI_DATASET \
	-resource-dir=${resource_dir_path} -I ${test_source_root}	-o a.out
	@./a.out

mvt-c-run:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c \
	${test_source_root}/polybench.c -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root}	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine | \
	${POLYGEIST_OPT}  -lower-affine -convert-polygeist-to-llvm | \
	$(MLIR_OPT) -reconcile-unrealized-casts | \
	${MLIR_TRANSLATE} --mlir-to-llvmir -o log.ll
	@${CLANG} log.ll -o a.out
	@./a.out

mvt-mlir-vector-run:
	@${CGEIST} /root/intern/Polygeist/tools/cgeist/Test/polybench/linear-algebra/kernels/mvt/mvt.c \
	${test_source_root}/polybench.c -D POLYBENCH_DUMP_ARRAYS -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE \
	-resource-dir=${resource_dir_path} -I ${test_source_root}	-S | \
	${POLYGEIST_OPT}  -raise-scf-to-affine | \
	${POLYGEIST_OPT}  -lower-affine -convert-polygeist-to-llvm | \
	$(MLIR_OPT) -reconcile-unrealized-casts | \
	${MLIR_TRANSLATE} --mlir-to-llvmir -o log.ll
	@${CLANG} log.ll -o a.out
	@./a.out

test-c-lower:
	@${CGEIST} ./test.c \
	-resource-dir=${resource_dir_path} -I ${test_source_root}	-S

test-lower:
	@$(MLIR_OPT) ./test.mlir \
		-affine-super-vectorize -o log.mlir

test-asm:	
	@$(MLIR_OPT) ./test.mlir \
			-convert-linalg-to-loops \
			-lower-affine \
			-convert-scf-to-cf \
			-convert-vector-to-llvm \
			-finalize-memref-to-llvm \
			-convert-arith-to-llvm \
			-llvm-request-c-wrappers \
			-convert-func-to-llvm \
			-reconcile-unrealized-casts | \
	${MLIR_TRANSLATE} --mlir-to-llvmir | \
	${LLC} -O2 -mtriple riscv64 -target-abi lp64d \
		-mattr=+m,+d,+v -riscv-v-vector-bits-min=256 \
		--filetype=asm -o log.s