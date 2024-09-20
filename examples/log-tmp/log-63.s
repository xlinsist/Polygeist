	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_f2p2_d2p2_v1p0_zicsr2p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.section	.sdata,"aw",@progbits
	.p2align	3, 0x0                          # -- Begin function matmul_broadcast_mask_affineload_63
.LCPI0_0:
	.quad	-9076969306111049207            # 0x8208208208208209
	.text
	.globl	matmul_broadcast_mask_affineload_63
	.p2align	2
	.type	matmul_broadcast_mask_affineload_63,@function
matmul_broadcast_mask_affineload_63:    # @matmul_broadcast_mask_affineload_63
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	s4, 24(sp)                      # 8-byte Folded Spill
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	sd	s7, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	li	a0, 0
	ld	a2, 96(sp)
	ld	a4, 88(sp)
	ld	a6, 80(sp)
	ld	a7, 64(sp)
	ld	t0, 152(sp)
	ld	t1, 120(sp)
	addi	t2, a4, -1
	lui	t3, %hi(.LCPI0_0)
	ld	t3, %lo(.LCPI0_0)(t3)
	li	t4, 63
	li	t5, 64
	vsetvli	zero, t5, e32, m8, ta, ma
	vmv.v.i	v8, 0
	li	t6, -1
	srli	t6, t6, 1
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	a0, a0, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_13 Depth 3
	bge	a0, a3, .LBB0_18
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	blez	a4, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	mv	s0, t2
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	neg	s0, a4
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	mulh	s1, s0, t3
	add	s0, s1, s0
	srli	s1, s0, 63
	srai	s0, s0, 5
	add	s0, s0, s1
	blez	a4, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s0, s0, 1
	j	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	neg	s0, s0
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	li	s1, 0
	mul	s2, a0, a5
	mul	s3, a0, t0
	bgtz	s0, .LBB0_11
	j	.LBB0_1
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=2
	add	s4, s3, s4
	slli	s4, s4, 2
	add	s4, t1, s4
	vsetvli	zero, t4, e32, m8, ta, ma
	vse32.v	v16, (s4)
	bge	s1, s0, .LBB0_1
.LBB0_11:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_13 Depth 3
	slli	s4, s1, 6
	sub	s4, s4, s1
	sub	s5, a4, s4
	addi	s1, s1, 1
	blt	s5, t4, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	li	s5, 0
	vmv8r.v	v16, v8
	blez	a6, .LBB0_10
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	s6, s5, s2
	slli	s6, s6, 2
	add	s6, a1, s6
	flw	fa5, 0(s6)
	mul	s6, s5, a2
	add	s6, s6, s4
	slli	s6, s6, 2
	add	s6, a7, s6
	vsetvli	zero, t4, e32, m8, ta, ma
	vle32.v	v24, (s6)
	vsetvli	zero, t5, e32, m8, ta, ma
	vfmacc.vf	v16, fa5, v24
	addi	s5, s5, 1
	blt	s5, a6, .LBB0_13
	j	.LBB0_10
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=2
	li	s6, 0
	vmv8r.v	v16, v8
.LBB0_15:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vsetvli	zero, t5, e32, m8, ta, ma
	vid.v	v0
	vsetivli	zero, 1, e64, m1, ta, ma
	vmv.s.x	v24, t6
	bge	s6, a6, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	vsetvli	zero, t5, e32, m8, ta, mu
	vmslt.vx	v25, v0, s5
	vmand.mm	v0, v25, v24
	add	s7, s6, s2
	slli	s7, s7, 2
	add	s7, a1, s7
	flw	fa5, 0(s7)
	mul	s7, s6, a2
	add	s7, s7, s4
	slli	s7, s7, 2
	add	s7, a7, s7
	vmv8r.v	v24, v8
	vle32.v	v24, (s7), v0.t
	vfmacc.vf	v16, fa5, v24
	addi	s6, s6, 1
	j	.LBB0_15
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=2
	vsetvli	zero, t5, e32, m8, ta, ma
	vmslt.vx	v25, v0, s5
	vmand.mm	v0, v25, v24
	add	s4, s3, s4
	slli	s4, s4, 2
	add	s4, t1, s4
	vse32.v	v16, (s4), v0.t
	blt	s1, s0, .LBB0_11
	j	.LBB0_1
.LBB0_18:
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	ld	s6, 8(sp)                       # 8-byte Folded Reload
	ld	s7, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	matmul_broadcast_mask_affineload_63, .Lfunc_end0-matmul_broadcast_mask_affineload_63
	.cfi_endproc
                                        # -- End function
	.globl	_mlir_ciface_matmul_broadcast_mask_affineload_63 # -- Begin function _mlir_ciface_matmul_broadcast_mask_affineload_63
	.p2align	2
	.type	_mlir_ciface_matmul_broadcast_mask_affineload_63,@function
_mlir_ciface_matmul_broadcast_mask_affineload_63: # @_mlir_ciface_matmul_broadcast_mask_affineload_63
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
	call	matmul_broadcast_mask_affineload_63@plt
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end1:
	.size	_mlir_ciface_matmul_broadcast_mask_affineload_63, .Lfunc_end1-_mlir_ciface_matmul_broadcast_mask_affineload_63
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
