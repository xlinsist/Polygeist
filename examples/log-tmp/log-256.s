	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_f2p2_d2p2_v1p0_zicsr2p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	8, 0x0                          # -- Begin function matmul_broadcast_mask_affineload_256
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
	.zero	192
.LCPI0_1:
	.word	128                             # 0x80
	.word	129                             # 0x81
	.word	130                             # 0x82
	.word	131                             # 0x83
	.word	132                             # 0x84
	.word	133                             # 0x85
	.word	134                             # 0x86
	.word	135                             # 0x87
	.word	136                             # 0x88
	.word	137                             # 0x89
	.word	138                             # 0x8a
	.word	139                             # 0x8b
	.word	140                             # 0x8c
	.word	141                             # 0x8d
	.word	142                             # 0x8e
	.word	143                             # 0x8f
	.word	144                             # 0x90
	.word	145                             # 0x91
	.word	146                             # 0x92
	.word	147                             # 0x93
	.word	148                             # 0x94
	.word	149                             # 0x95
	.word	150                             # 0x96
	.word	151                             # 0x97
	.word	152                             # 0x98
	.word	153                             # 0x99
	.word	154                             # 0x9a
	.word	155                             # 0x9b
	.word	156                             # 0x9c
	.word	157                             # 0x9d
	.word	158                             # 0x9e
	.word	159                             # 0x9f
	.word	160                             # 0xa0
	.word	161                             # 0xa1
	.word	162                             # 0xa2
	.word	163                             # 0xa3
	.word	164                             # 0xa4
	.word	165                             # 0xa5
	.word	166                             # 0xa6
	.word	167                             # 0xa7
	.word	168                             # 0xa8
	.word	169                             # 0xa9
	.word	170                             # 0xaa
	.word	171                             # 0xab
	.word	172                             # 0xac
	.word	173                             # 0xad
	.word	174                             # 0xae
	.word	175                             # 0xaf
	.word	176                             # 0xb0
	.word	177                             # 0xb1
	.word	178                             # 0xb2
	.word	179                             # 0xb3
	.word	180                             # 0xb4
	.word	181                             # 0xb5
	.word	182                             # 0xb6
	.word	183                             # 0xb7
	.word	184                             # 0xb8
	.word	185                             # 0xb9
	.word	186                             # 0xba
	.word	187                             # 0xbb
	.word	188                             # 0xbc
	.word	189                             # 0xbd
	.word	190                             # 0xbe
	.word	191                             # 0xbf
.LCPI0_2:
	.word	192                             # 0xc0
	.word	193                             # 0xc1
	.word	194                             # 0xc2
	.word	195                             # 0xc3
	.word	196                             # 0xc4
	.word	197                             # 0xc5
	.word	198                             # 0xc6
	.word	199                             # 0xc7
	.word	200                             # 0xc8
	.word	201                             # 0xc9
	.word	202                             # 0xca
	.word	203                             # 0xcb
	.word	204                             # 0xcc
	.word	205                             # 0xcd
	.word	206                             # 0xce
	.word	207                             # 0xcf
	.word	208                             # 0xd0
	.word	209                             # 0xd1
	.word	210                             # 0xd2
	.word	211                             # 0xd3
	.word	212                             # 0xd4
	.word	213                             # 0xd5
	.word	214                             # 0xd6
	.word	215                             # 0xd7
	.word	216                             # 0xd8
	.word	217                             # 0xd9
	.word	218                             # 0xda
	.word	219                             # 0xdb
	.word	220                             # 0xdc
	.word	221                             # 0xdd
	.word	222                             # 0xde
	.word	223                             # 0xdf
	.word	224                             # 0xe0
	.word	225                             # 0xe1
	.word	226                             # 0xe2
	.word	227                             # 0xe3
	.word	228                             # 0xe4
	.word	229                             # 0xe5
	.word	230                             # 0xe6
	.word	231                             # 0xe7
	.word	232                             # 0xe8
	.word	233                             # 0xe9
	.word	234                             # 0xea
	.word	235                             # 0xeb
	.word	236                             # 0xec
	.word	237                             # 0xed
	.word	238                             # 0xee
	.word	239                             # 0xef
	.word	240                             # 0xf0
	.word	241                             # 0xf1
	.word	242                             # 0xf2
	.word	243                             # 0xf3
	.word	244                             # 0xf4
	.word	245                             # 0xf5
	.word	246                             # 0xf6
	.word	247                             # 0xf7
	.word	248                             # 0xf8
	.word	249                             # 0xf9
	.word	250                             # 0xfa
	.word	251                             # 0xfb
	.word	252                             # 0xfc
	.word	253                             # 0xfd
	.word	254                             # 0xfe
	.word	255                             # 0xff
	.text
	.globl	matmul_broadcast_mask_affineload_256
	.p2align	2
	.type	matmul_broadcast_mask_affineload_256,@function
matmul_broadcast_mask_affineload_256:   # @matmul_broadcast_mask_affineload_256
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	s0, 104(sp)                     # 8-byte Folded Spill
	sd	s1, 96(sp)                      # 8-byte Folded Spill
	sd	s2, 88(sp)                      # 8-byte Folded Spill
	sd	s3, 80(sp)                      # 8-byte Folded Spill
	sd	s4, 72(sp)                      # 8-byte Folded Spill
	sd	s5, 64(sp)                      # 8-byte Folded Spill
	sd	s6, 56(sp)                      # 8-byte Folded Spill
	sd	s7, 48(sp)                      # 8-byte Folded Spill
	sd	s8, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	csrr	a0, vlenb
	li	a2, 48
	mul	a0, a0, a2
	sub	sp, sp, a0
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xf0, 0x00, 0x22, 0x11, 0x30, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 112 + 48 * vlenb
	li	a0, 0
	csrr	a2, vlenb
	li	a4, 48
	mul	a2, a2, a4
	add	a2, sp, a2
	ld	a2, 144(a2)
	csrr	a4, vlenb
	li	a6, 48
	mul	a4, a4, a6
	add	a4, sp, a4
	ld	a4, 136(a4)
	csrr	a6, vlenb
	li	a7, 48
	mul	a6, a6, a7
	add	a6, sp, a6
	ld	a6, 128(a6)
	csrr	a7, vlenb
	li	t0, 48
	mul	a7, a7, t0
	add	a7, sp, a7
	ld	a7, 112(a7)
	csrr	t0, vlenb
	li	t1, 48
	mul	t0, t0, t1
	add	t0, sp, t0
	ld	t0, 200(t0)
	csrr	t1, vlenb
	li	t2, 48
	mul	t1, t1, t2
	add	t1, sp, t1
	ld	t1, 168(t1)
	addi	t2, a4, -1
	li	t3, 256
	li	t4, 64
	vsetvli	zero, t4, e32, m8, ta, ma
	vmv.v.i	v8, 0
	addi	t4, sp, 32
	vs8r.v	v8, (t4)                        # Unknown-size Folded Spill
	lui	t4, %hi(.LCPI0_2)
	addi	t4, t4, %lo(.LCPI0_2)
	lui	t5, %hi(.LCPI0_1)
	addi	t5, t5, %lo(.LCPI0_1)
	lui	t6, %hi(.LCPI0_0)
	addi	t6, t6, %lo(.LCPI0_0)
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
	srai	s1, s0, 63
	srli	s1, s1, 56
	add	s0, s0, s1
	srai	s0, s0, 8
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
	vse32.v	v0, (s4)
	addi	s5, s4, 768
	csrr	s6, vlenb
	li	s7, 40
	mul	s6, s6, s7
	add	s6, sp, s6
	addi	s6, s6, 32
	vl8r.v	v16, (s6)                       # Unknown-size Folded Reload
	vse32.v	v16, (s5)
	addi	s5, s4, 512
	vse32.v	v24, (s5)
	addi	s4, s4, 256
	vse32.v	v8, (s4)
	bge	s1, s0, .LBB0_1
.LBB0_11:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_13 Depth 3
	slli	s4, s1, 8
	sub	s5, a4, s4
	addi	s1, s1, 1
	blt	s5, t3, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	li	s5, 0
	addi	s6, sp, 32
	vl8r.v	v16, (s6)                       # Unknown-size Folded Reload
	vmv8r.v	v0, v16
	vmv8r.v	v8, v16
	vmv8r.v	v24, v16
	csrr	s6, vlenb
	li	s7, 40
	mul	s6, s6, s7
	add	s6, sp, s6
	addi	s6, s6, 32
	vs8r.v	v16, (s6)                       # Unknown-size Folded Spill
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
	addi	s7, s6, 768
	csrr	s8, vlenb
	slli	s8, s8, 5
	add	s8, sp, s8
	addi	s8, s8, 32
	vs8r.v	v8, (s8)                        # Unknown-size Folded Spill
	vle32.v	v8, (s7)
	csrr	s7, vlenb
	slli	s7, s7, 4
	add	s7, sp, s7
	addi	s7, s7, 32
	vs8r.v	v8, (s7)                        # Unknown-size Folded Spill
	addi	s7, s6, 256
	vle32.v	v8, (s6)
	addi	s6, s6, 512
	vle32.v	v16, (s6)
	csrr	s6, vlenb
	slli	s6, s6, 3
	add	s6, sp, s6
	addi	s6, s6, 32
	vs8r.v	v16, (s6)                       # Unknown-size Folded Spill
	vle32.v	v16, (s7)
	csrr	s6, vlenb
	li	s7, 24
	mul	s6, s6, s7
	add	s6, sp, s6
	addi	s6, s6, 32
	vs8r.v	v16, (s6)                       # Unknown-size Folded Spill
	vfmacc.vf	v0, fa5, v8
	csrr	s6, vlenb
	li	s7, 40
	mul	s6, s6, s7
	add	s6, sp, s6
	addi	s6, s6, 32
	vl8r.v	v8, (s6)                        # Unknown-size Folded Reload
	csrr	s6, vlenb
	slli	s6, s6, 4
	add	s6, sp, s6
	addi	s6, s6, 32
	vl8r.v	v16, (s6)                       # Unknown-size Folded Reload
	vfmacc.vf	v8, fa5, v16
	csrr	s6, vlenb
	li	s7, 40
	mul	s6, s6, s7
	add	s6, sp, s6
	addi	s6, s6, 32
	vs8r.v	v8, (s6)                        # Unknown-size Folded Spill
	csrr	s6, vlenb
	slli	s6, s6, 5
	add	s6, sp, s6
	addi	s6, s6, 32
	vl8r.v	v8, (s6)                        # Unknown-size Folded Reload
	csrr	s6, vlenb
	slli	s6, s6, 3
	add	s6, sp, s6
	addi	s6, s6, 32
	vl8r.v	v16, (s6)                       # Unknown-size Folded Reload
	vfmacc.vf	v24, fa5, v16
	csrr	s6, vlenb
	li	s7, 24
	mul	s6, s6, s7
	add	s6, sp, s6
	addi	s6, s6, 32
	vl8r.v	v16, (s6)                       # Unknown-size Folded Reload
	vfmacc.vf	v8, fa5, v16
	addi	s5, s5, 1
	blt	s5, a6, .LBB0_13
	j	.LBB0_10
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=2
	li	s6, 0
	addi	s7, sp, 32
	vl8r.v	v8, (s7)                        # Unknown-size Folded Reload
	csrr	s7, vlenb
	li	s8, 24
	mul	s7, s7, s8
	add	s7, sp, s7
	addi	s7, s7, 32
	vs8r.v	v8, (s7)                        # Unknown-size Folded Spill
	vmv8r.v	v24, v8
	csrr	s7, vlenb
	li	s8, 40
	mul	s7, s7, s8
	add	s7, sp, s7
	addi	s7, s7, 32
	vs8r.v	v8, (s7)                        # Unknown-size Folded Spill
	csrr	s7, vlenb
	slli	s7, s7, 5
	add	s7, sp, s7
	addi	s7, s7, 32
	vs8r.v	v8, (s7)                        # Unknown-size Folded Spill
.LBB0_15:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vsetvli	zero, zero, e32, m8, ta, ma
	vid.v	v16
	bge	s6, a6, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	vle32.v	v8, (t4)
	sd	a0, 8(sp)
	csrr	a0, vlenb
	slli	a0, a0, 4
	add	a0, sp, a0
	addi	a0, a0, 32
	vs8r.v	v24, (a0)                       # Unknown-size Folded Spill
	vle32.v	v24, (t5)
	vle8.v	v4, (t6)
	vmslt.vx	v1, v16, s5
	vmslt.vx	v2, v8, s5
	vmslt.vx	v3, v24, s5
	vsext.vf4	v16, v4
	vmslt.vx	v0, v16, s5
	add	s7, s6, s2
	slli	s7, s7, 2
	add	s7, a1, s7
	flw	fa5, 0(s7)
	mul	s7, s6, a2
	add	s7, s7, s4
	slli	s7, s7, 2
	add	s7, a7, s7
	addi	s8, s7, 256
	vsetvli	zero, zero, e32, m8, ta, mu
	addi	a0, sp, 32
	vl8r.v	v8, (a0)                        # Unknown-size Folded Reload
	ld	a0, 8(sp)
	vmv8r.v	v16, v8
	vle32.v	v16, (s8), v0.t
	csrr	s8, vlenb
	slli	s8, s8, 3
	add	s8, sp, s8
	addi	s8, s8, 32
	vs8r.v	v16, (s8)                       # Unknown-size Folded Spill
	addi	s8, s7, 512
	vmv8r.v	v24, v8
	vmv1r.v	v0, v3
	vle32.v	v24, (s8), v0.t
	addi	s8, s7, 768
	vmv8r.v	v16, v8
	vmv1r.v	v0, v2
	vle32.v	v16, (s8), v0.t
	vmv1r.v	v0, v1
	vle32.v	v8, (s7), v0.t
	csrr	s7, vlenb
	li	s8, 24
	mul	s7, s7, s8
	add	s7, sp, s7
	addi	s7, s7, 32
	vl8r.v	v0, (s7)                        # Unknown-size Folded Reload
	vfmacc.vf	v0, fa5, v8
	csrr	s7, vlenb
	li	s8, 24
	mul	s7, s7, s8
	add	s7, sp, s7
	addi	s7, s7, 32
	vs8r.v	v0, (s7)                        # Unknown-size Folded Spill
	csrr	s7, vlenb
	slli	s7, s7, 5
	add	s7, sp, s7
	addi	s7, s7, 32
	vl8r.v	v8, (s7)                        # Unknown-size Folded Reload
	vfmacc.vf	v8, fa5, v16
	csrr	s7, vlenb
	slli	s7, s7, 5
	add	s7, sp, s7
	addi	s7, s7, 32
	vs8r.v	v8, (s7)                        # Unknown-size Folded Spill
	csrr	s7, vlenb
	li	s8, 40
	mul	s7, s7, s8
	add	s7, sp, s7
	addi	s7, s7, 32
	vl8r.v	v8, (s7)                        # Unknown-size Folded Reload
	vfmacc.vf	v8, fa5, v24
	csrr	s7, vlenb
	li	s8, 40
	mul	s7, s7, s8
	add	s7, sp, s7
	addi	s7, s7, 32
	vs8r.v	v8, (s7)                        # Unknown-size Folded Spill
	csrr	s7, vlenb
	slli	s7, s7, 4
	add	s7, sp, s7
	addi	s7, s7, 32
	vl8r.v	v24, (s7)                       # Unknown-size Folded Reload
	csrr	s7, vlenb
	slli	s7, s7, 3
	add	s7, sp, s7
	addi	s7, s7, 32
	vl8r.v	v8, (s7)                        # Unknown-size Folded Reload
	vfmacc.vf	v24, fa5, v8
	addi	s6, s6, 1
	j	.LBB0_15
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=2
	vmslt.vx	v0, v16, s5
	add	s4, s3, s4
	vle32.v	v8, (t4)
	slli	s4, s4, 2
	add	s4, t1, s4
	csrr	s6, vlenb
	li	s7, 24
	mul	s6, s6, s7
	add	s6, sp, s6
	addi	s6, s6, 32
	vl8r.v	v16, (s6)                       # Unknown-size Folded Reload
	vse32.v	v16, (s4), v0.t
	vmslt.vx	v0, v8, s5
	vle32.v	v8, (t5)
	addi	s6, s4, 768
	csrr	s7, vlenb
	slli	s7, s7, 5
	add	s7, sp, s7
	addi	s7, s7, 32
	vl8r.v	v16, (s7)                       # Unknown-size Folded Reload
	vse32.v	v16, (s6), v0.t
	vle8.v	v16, (t6)
	vmslt.vx	v0, v8, s5
	addi	s6, s4, 512
	csrr	s7, vlenb
	li	s8, 40
	mul	s7, s7, s8
	add	s7, sp, s7
	addi	s7, s7, 32
	vl8r.v	v8, (s7)                        # Unknown-size Folded Reload
	vse32.v	v8, (s6), v0.t
	vsext.vf4	v8, v16
	vmslt.vx	v0, v8, s5
	addi	s4, s4, 256
	vse32.v	v24, (s4), v0.t
	blt	s1, s0, .LBB0_11
	j	.LBB0_1
.LBB0_18:
	csrr	a0, vlenb
	li	a1, 48
	mul	a0, a0, a1
	add	sp, sp, a0
	ld	s0, 104(sp)                     # 8-byte Folded Reload
	ld	s1, 96(sp)                      # 8-byte Folded Reload
	ld	s2, 88(sp)                      # 8-byte Folded Reload
	ld	s3, 80(sp)                      # 8-byte Folded Reload
	ld	s4, 72(sp)                      # 8-byte Folded Reload
	ld	s5, 64(sp)                      # 8-byte Folded Reload
	ld	s6, 56(sp)                      # 8-byte Folded Reload
	ld	s7, 48(sp)                      # 8-byte Folded Reload
	ld	s8, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end0:
	.size	matmul_broadcast_mask_affineload_256, .Lfunc_end0-matmul_broadcast_mask_affineload_256
	.cfi_endproc
                                        # -- End function
	.globl	_mlir_ciface_matmul_broadcast_mask_affineload_256 # -- Begin function _mlir_ciface_matmul_broadcast_mask_affineload_256
	.p2align	2
	.type	_mlir_ciface_matmul_broadcast_mask_affineload_256,@function
_mlir_ciface_matmul_broadcast_mask_affineload_256: # @_mlir_ciface_matmul_broadcast_mask_affineload_256
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
	call	matmul_broadcast_mask_affineload_256@plt
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end1:
	.size	_mlir_ciface_matmul_broadcast_mask_affineload_256, .Lfunc_end1-_mlir_ciface_matmul_broadcast_mask_affineload_256
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
