	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_f2p2_d2p2_v1p0_zicsr2p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.globl	matmul_broadcast_mask_affineload_32 # -- Begin function matmul_broadcast_mask_affineload_32
	.p2align	2
	.type	matmul_broadcast_mask_affineload_32,@function
matmul_broadcast_mask_affineload_32:    # @matmul_broadcast_mask_affineload_32
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	s0, 24(sp)                      # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	sd	s3, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	li	a0, 0
	ld	a2, 64(sp)
	ld	a4, 56(sp)
	ld	a6, 48(sp)
	ld	a7, 32(sp)
	ld	t0, 120(sp)
	ld	t1, 88(sp)
	addi	t2, a4, -1
	li	t3, 32
	vsetvli	zero, t3, e32, m4, ta, ma
	vmv.v.i	v8, 0
	vid.v	v12
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	a0, a0, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_13 Depth 3
	bge	a0, a3, .LBB0_17
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	blez	a4, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	mv	t4, t2
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	neg	t4, a4
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	srai	t5, t4, 63
	srli	t5, t5, 59
	add	t4, t4, t5
	srai	t4, t4, 5
	blez	a4, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t4, t4, 1
	j	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	neg	t4, t4
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	li	t5, 0
	mul	t6, a0, a5
	mul	s0, a0, t0
	bgtz	t4, .LBB0_11
	j	.LBB0_1
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=2
	add	s1, s0, s1
	slli	s1, s1, 2
	add	s1, t1, s1
	vse32.v	v16, (s1)
	bge	t5, t4, .LBB0_1
.LBB0_11:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_13 Depth 3
	slli	s1, t5, 5
	sub	s3, a4, s1
	addi	t5, t5, 1
	li	s2, 0
	blt	s3, t3, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	vmv4r.v	v16, v8
	bge	s2, a6, .LBB0_10
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	s3, s2, t6
	slli	s3, s3, 2
	add	s3, a1, s3
	flw	fa5, 0(s3)
	mul	s3, s2, a2
	add	s3, s3, s1
	slli	s3, s3, 2
	add	s3, a7, s3
	vle32.v	v20, (s3)
	vfmacc.vf	v16, fa5, v20
	addi	s2, s2, 1
	blt	s2, a6, .LBB0_13
	j	.LBB0_10
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=2
	vmslt.vx	v0, v12, s3
	vmv4r.v	v16, v8
	bge	s2, a6, .LBB0_16
.LBB0_15:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	s3, s2, t6
	slli	s3, s3, 2
	add	s3, a1, s3
	flw	fa5, 0(s3)
	mul	s3, s2, a2
	add	s3, s3, s1
	slli	s3, s3, 2
	add	s3, a7, s3
	vsetvli	zero, zero, e32, m4, ta, mu
	vmv4r.v	v20, v8
	vle32.v	v20, (s3), v0.t
	vfmacc.vf	v16, fa5, v20
	addi	s2, s2, 1
	blt	s2, a6, .LBB0_15
.LBB0_16:                               #   in Loop: Header=BB0_11 Depth=2
	add	s1, s0, s1
	slli	s1, s1, 2
	add	s1, t1, s1
	vsetvli	zero, zero, e32, m4, ta, ma
	vse32.v	v16, (s1), v0.t
	blt	t5, t4, .LBB0_11
	j	.LBB0_1
.LBB0_17:
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	ld	s3, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	matmul_broadcast_mask_affineload_32, .Lfunc_end0-matmul_broadcast_mask_affineload_32
	.cfi_endproc
                                        # -- End function
	.globl	_mlir_ciface_matmul_broadcast_mask_affineload_32 # -- Begin function _mlir_ciface_matmul_broadcast_mask_affineload_32
	.p2align	2
	.type	_mlir_ciface_matmul_broadcast_mask_affineload_32,@function
_mlir_ciface_matmul_broadcast_mask_affineload_32: # @_mlir_ciface_matmul_broadcast_mask_affineload_32
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	ld	a6, 48(a0)
	ld	a5, 40(a0)
	ld	a4, 32(a0)
	ld	a3, 24(a0)
	ld	t1, 16(a0)
	ld	t0, 8(a0)
	ld	a0, 0(a0)
	ld	a7, 0(a1)
	addi	t2, a1, 40
	vsetivli	zero, 2, e64, m1, ta, ma
	vle64.v	v8, (t2)
	addi	a1, a1, 8
	vsetivli	zero, 4, e64, m1, ta, ma
	vle64.v	v9, (a1)
	vle64.v	v10, (a2)
	addi	a1, a2, 32
	vsetivli	zero, 2, e64, m1, ta, ma
	vle64.v	v11, (a1)
	ld	a1, 48(a2)
	sd	a1, 96(sp)
	vsetivli	zero, 4, e64, m1, ta, ma
	vse64.v	v9, (sp)
	addi	a1, sp, 80
	vsetivli	zero, 2, e64, m1, ta, ma
	vse64.v	v11, (a1)
	addi	a1, sp, 48
	vsetivli	zero, 4, e64, m1, ta, ma
	vse64.v	v10, (a1)
	addi	a1, sp, 32
	vsetivli	zero, 2, e64, m1, ta, ma
	vse64.v	v8, (a1)
	mv	a1, t0
	mv	a2, t1
	call	matmul_broadcast_mask_affineload_32@plt
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end1:
	.size	_mlir_ciface_matmul_broadcast_mask_affineload_32, .Lfunc_end1-_mlir_ciface_matmul_broadcast_mask_affineload_32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
