	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_f2p2_d2p2_v1p0_zicsr2p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function matmul_broadcast_mask_affineload_128
.LCPI0_0:
	.byte	64                              # 0x40
	.byte	65                              # 0x41
	.byte	66                              # 0x42
	.byte	67                              # 0x43
	.byte	68                              # 0x44
	.byte	69                              # 0x45
	.byte	70                              # 0x46
	.byte	71                              # 0x47
	.byte	72                              # 0x48
	.byte	73                              # 0x49
	.byte	74                              # 0x4a
	.byte	75                              # 0x4b
	.byte	76                              # 0x4c
	.byte	77                              # 0x4d
	.byte	78                              # 0x4e
	.byte	79                              # 0x4f
	.byte	80                              # 0x50
	.byte	81                              # 0x51
	.byte	82                              # 0x52
	.byte	83                              # 0x53
	.byte	84                              # 0x54
	.byte	85                              # 0x55
	.byte	86                              # 0x56
	.byte	87                              # 0x57
	.byte	88                              # 0x58
	.byte	89                              # 0x59
	.byte	90                              # 0x5a
	.byte	91                              # 0x5b
	.byte	92                              # 0x5c
	.byte	93                              # 0x5d
	.byte	94                              # 0x5e
	.byte	95                              # 0x5f
	.byte	96                              # 0x60
	.byte	97                              # 0x61
	.byte	98                              # 0x62
	.byte	99                              # 0x63
	.byte	100                             # 0x64
	.byte	101                             # 0x65
	.byte	102                             # 0x66
	.byte	103                             # 0x67
	.byte	104                             # 0x68
	.byte	105                             # 0x69
	.byte	106                             # 0x6a
	.byte	107                             # 0x6b
	.byte	108                             # 0x6c
	.byte	109                             # 0x6d
	.byte	110                             # 0x6e
	.byte	111                             # 0x6f
	.byte	112                             # 0x70
	.byte	113                             # 0x71
	.byte	114                             # 0x72
	.byte	115                             # 0x73
	.byte	116                             # 0x74
	.byte	117                             # 0x75
	.byte	118                             # 0x76
	.byte	119                             # 0x77
	.byte	120                             # 0x78
	.byte	121                             # 0x79
	.byte	122                             # 0x7a
	.byte	123                             # 0x7b
	.byte	124                             # 0x7c
	.byte	125                             # 0x7d
	.byte	126                             # 0x7e
	.byte	127                             # 0x7f
	.text
	.globl	matmul_broadcast_mask_affineload_128
	.p2align	2
	.type	matmul_broadcast_mask_affineload_128,@function
matmul_broadcast_mask_affineload_128:   # @matmul_broadcast_mask_affineload_128
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	csrr	a0, vlenb
	li	a2, 24
	mul	a0, a0, a2
	sub	sp, sp, a0
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xe0, 0x00, 0x22, 0x11, 0x18, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 96 + 24 * vlenb
	li	a0, 0
	csrr	a2, vlenb
	li	a4, 24
	mul	a2, a2, a4
	add	a2, sp, a2
	ld	a2, 128(a2)
	csrr	a4, vlenb
	li	a6, 24
	mul	a4, a4, a6
	add	a4, sp, a4
	ld	a4, 120(a4)
	csrr	a6, vlenb
	li	a7, 24
	mul	a6, a6, a7
	add	a6, sp, a6
	ld	a6, 112(a6)
	csrr	a7, vlenb
	li	t0, 24
	mul	a7, a7, t0
	add	a7, sp, a7
	ld	a7, 96(a7)
	csrr	t0, vlenb
	li	t1, 24
	mul	t0, t0, t1
	add	t0, sp, t0
	ld	t0, 184(t0)
	csrr	t1, vlenb
	li	t2, 24
	mul	t1, t1, t2
	add	t1, sp, t1
	ld	t1, 152(t1)
	addi	t2, a4, -1
	li	t3, 128
	li	t4, 64
	vsetvli	zero, t4, e32, m8, ta, ma
	vmv.v.i	v8, 0
	addi	t4, sp, 32
	vs8r.v	v8, (t4)                        # Unknown-size Folded Spill
	lui	t4, %hi(.LCPI0_0)
	addi	t4, t4, %lo(.LCPI0_0)
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
	mv	t5, t2
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	neg	t5, a4
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	srai	t6, t5, 63
	srli	t6, t6, 57
	add	t5, t5, t6
	srai	t5, t5, 7
	blez	a4, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	j	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	neg	t5, t5
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	li	t6, 0
	mul	s0, a0, a5
	mul	s1, a0, t0
	bgtz	t5, .LBB0_11
	j	.LBB0_1
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=2
	add	s2, s1, s2
	slli	s2, s2, 2
	add	s2, t1, s2
	vse32.v	v16, (s2)
	addi	s2, s2, 256
	vse32.v	v8, (s2)
	bge	t6, t5, .LBB0_1
.LBB0_11:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_13 Depth 3
	slli	s2, t6, 7
	sub	s3, a4, s2
	addi	t6, t6, 1
	blt	s3, t3, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	li	s3, 0
	addi	s4, sp, 32
	vl8r.v	v8, (s4)                        # Unknown-size Folded Reload
	vmv8r.v	v16, v8
	blez	a6, .LBB0_10
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	s4, s3, s0
	slli	s4, s4, 2
	add	s4, a1, s4
	flw	fa5, 0(s4)
	mul	s4, s3, a2
	add	s4, s4, s2
	slli	s4, s4, 2
	add	s4, a7, s4
	addi	s5, s4, 256
	vle32.v	v24, (s4)
	vle32.v	v0, (s5)
	vfmacc.vf	v16, fa5, v24
	vfmacc.vf	v8, fa5, v0
	addi	s3, s3, 1
	blt	s3, a6, .LBB0_13
	j	.LBB0_10
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=2
	li	s4, 0
	addi	s5, sp, 32
	vl8r.v	v8, (s5)                        # Unknown-size Folded Reload
	csrr	s5, vlenb
	slli	s5, s5, 3
	add	s5, sp, s5
	addi	s5, s5, 32
	vs8r.v	v8, (s5)                        # Unknown-size Folded Spill
	csrr	s5, vlenb
	slli	s5, s5, 4
	add	s5, sp, s5
	addi	s5, s5, 32
	vs8r.v	v8, (s5)                        # Unknown-size Folded Spill
.LBB0_15:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vsetvli	zero, zero, e32, m8, ta, ma
	vid.v	v24
	bge	s4, a6, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	vle8.v	v10, (t4)
	vmslt.vx	v8, v24, s3
	vsext.vf4	v24, v10
	vmslt.vx	v0, v24, s3
	add	s5, s4, s0
	slli	s5, s5, 2
	add	s5, a1, s5
	flw	fa5, 0(s5)
	mul	s5, s4, a2
	add	s5, s5, s2
	slli	s5, s5, 2
	add	s5, a7, s5
	addi	s6, s5, 256
	vsetvli	zero, zero, e32, m8, ta, mu
	sd	a0, 8(sp)
	addi	a0, sp, 32
	vl8r.v	v16, (a0)                       # Unknown-size Folded Reload
	ld	a0, 8(sp)
	vmv8r.v	v24, v16
	vle32.v	v24, (s6), v0.t
	vmv1r.v	v0, v8
	vle32.v	v16, (s5), v0.t
	csrr	s5, vlenb
	slli	s5, s5, 3
	add	s5, sp, s5
	addi	s5, s5, 32
	vl8r.v	v8, (s5)                        # Unknown-size Folded Reload
	vfmacc.vf	v8, fa5, v16
	csrr	s5, vlenb
	slli	s5, s5, 3
	add	s5, sp, s5
	addi	s5, s5, 32
	vs8r.v	v8, (s5)                        # Unknown-size Folded Spill
	csrr	s5, vlenb
	slli	s5, s5, 4
	add	s5, sp, s5
	addi	s5, s5, 32
	vl8r.v	v8, (s5)                        # Unknown-size Folded Reload
	vfmacc.vf	v8, fa5, v24
	csrr	s5, vlenb
	slli	s5, s5, 4
	add	s5, sp, s5
	addi	s5, s5, 32
	vs8r.v	v8, (s5)                        # Unknown-size Folded Spill
	addi	s4, s4, 1
	j	.LBB0_15
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=2
	vle8.v	v8, (t4)
	vmslt.vx	v0, v24, s3
	vsext.vf4	v16, v8
	vmslt.vx	v8, v16, s3
	add	s2, s1, s2
	slli	s2, s2, 2
	add	s2, t1, s2
	csrr	s3, vlenb
	slli	s3, s3, 3
	add	s3, sp, s3
	addi	s3, s3, 32
	vl8r.v	v16, (s3)                       # Unknown-size Folded Reload
	vse32.v	v16, (s2), v0.t
	addi	s2, s2, 256
	vmv1r.v	v0, v8
	csrr	s3, vlenb
	slli	s3, s3, 4
	add	s3, sp, s3
	addi	s3, s3, 32
	vl8r.v	v8, (s3)                        # Unknown-size Folded Reload
	vse32.v	v8, (s2), v0.t
	blt	t6, t5, .LBB0_11
	j	.LBB0_1
.LBB0_18:
	csrr	a0, vlenb
	li	a1, 24
	mul	a0, a0, a1
	add	sp, sp, a0
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	matmul_broadcast_mask_affineload_128, .Lfunc_end0-matmul_broadcast_mask_affineload_128
	.cfi_endproc
                                        # -- End function
	.globl	_mlir_ciface_matmul_broadcast_mask_affineload_128 # -- Begin function _mlir_ciface_matmul_broadcast_mask_affineload_128
	.p2align	2
	.type	_mlir_ciface_matmul_broadcast_mask_affineload_128,@function
_mlir_ciface_matmul_broadcast_mask_affineload_128: # @_mlir_ciface_matmul_broadcast_mask_affineload_128
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
	call	matmul_broadcast_mask_affineload_128@plt
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end1:
	.size	_mlir_ciface_matmul_broadcast_mask_affineload_128, .Lfunc_end1-_mlir_ciface_matmul_broadcast_mask_affineload_128
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
