	.text
	.file	"LLVMDialectModule"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_1:
	.long	458129845                       # 0x1b4e81b5
.LCPI0_2:
	.long	1200                            # 0x4b0
.LCPI0_4:
	.long	2                               # 0x2
.LCPI0_5:
	.long	274877907                       # 0x10624dd3
.LCPI0_6:
	.long	1000                            # 0x3e8
.LCPI0_8:
	.long	8                               # 0x8
.LCPI0_9:
	.long	3                               # 0x3
.LCPI0_10:
	.long	16                              # 0x10
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_3:
	.quad	0x4092c00000000000              # double 1200
.LCPI0_7:
	.quad	0x408f400000000000              # double 1000
.LCPI0_12:
	.quad	0x3ff3333333333333              # double 1.2
.LCPI0_13:
	.quad	0x3ff8000000000000              # double 1.5
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.LCPI0_11:
	.quad	0                               # 0x0
	.quad	8000000                         # 0x7a1200
	.quad	16000000                        # 0xf42400
	.quad	24000000                        # 0x16e3600
	.quad	32000000                        # 0x1e84800
	.quad	40000000                        # 0x2625a00
	.quad	48000000                        # 0x2dc6c00
	.quad	56000000                        # 0x3567e00
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$11520000, %edi                 # imm = 0xAFC800
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	$9600000, %edi                  # imm = 0x927C00
	callq	malloc@PLT
	movq	%rax, %r14
	movl	$9600000, %edi                  # imm = 0x927C00
	callq	malloc@PLT
	movq	%rax, %r15
	xorl	%eax, %eax
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	vpbroadcastd	.LCPI0_1(%rip), %ymm0   # ymm0 = [458129845,458129845,458129845,458129845,458129845,458129845,458129845,458129845]
	vpbroadcastd	.LCPI0_2(%rip), %ymm1   # ymm1 = [1200,1200,1200,1200,1200,1200,1200,1200]
	vbroadcastsd	.LCPI0_3(%rip), %zmm6   # zmm6 = [1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3]
	vpbroadcastd	.LCPI0_4(%rip), %ymm7   # ymm7 = [2,2,2,2,2,2,2,2]
	vpbroadcastd	.LCPI0_5(%rip), %ymm8   # ymm8 = [274877907,274877907,274877907,274877907,274877907,274877907,274877907,274877907]
	vpbroadcastd	.LCPI0_6(%rip), %ymm9   # ymm9 = [1000,1000,1000,1000,1000,1000,1000,1000]
	vbroadcastsd	.LCPI0_7(%rip), %zmm2   # zmm2 = [1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3]
	vpbroadcastd	.LCPI0_8(%rip), %ymm3   # ymm3 = [8,8,8,8,8,8,8,8]
	movq	%r14, %rcx
	movq	%r15, %rdx
	.p2align	4, 0x90
.LBB0_1:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	vmovd	%eax, %xmm10
	vpbroadcastd	%xmm10, %ymm10
	xorl	%esi, %esi
	vmovdqa	.LCPI0_0(%rip), %ymm11          # ymm11 = [0,1,2,3,4,5,6,7]
	.p2align	4, 0x90
.LBB0_2:                                # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpmulld	%ymm10, %ymm11, %ymm12
	vpsubd	%ymm5, %ymm12, %ymm13
	vpshufd	$245, %ymm13, %ymm14            # ymm14 = ymm13[1,1,3,3,5,5,7,7]
	vpmuldq	%ymm0, %ymm14, %ymm14
	vpmuldq	%ymm0, %ymm13, %ymm15
	vpshufd	$245, %ymm15, %ymm15            # ymm15 = ymm15[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm14, %ymm15, %ymm14    # ymm14 = ymm15[0],ymm14[1],ymm15[2],ymm14[3],ymm15[4],ymm14[5],ymm15[6],ymm14[7]
	vpsrld	$31, %ymm14, %ymm15
	vpsrad	$7, %ymm14, %ymm14
	vpaddd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm15, %ymm14, %ymm14
	vpshufd	$245, %ymm12, %ymm15            # ymm15 = ymm12[1,1,3,3,5,5,7,7]
	vpmuldq	%ymm8, %ymm15, %ymm15
	vpmuldq	%ymm8, %ymm12, %ymm4
	vpmulld	%ymm1, %ymm14, %ymm14
	vpshufd	$245, %ymm4, %ymm4              # ymm4 = ymm4[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm15, %ymm4, %ymm4      # ymm4 = ymm4[0],ymm15[1],ymm4[2],ymm15[3],ymm4[4],ymm15[5],ymm4[6],ymm15[7]
	vpsrld	$31, %ymm4, %ymm15
	vpsubd	%ymm14, %ymm13, %ymm13
	vpsrad	$6, %ymm4, %ymm4
	vpaddd	%ymm4, %ymm15, %ymm4
	vcvtdq2pd	%ymm13, %zmm13
	vpmulld	%ymm9, %ymm4, %ymm4
	vpsubd	%ymm4, %ymm12, %ymm4
	vcvtdq2pd	%ymm4, %zmm4
	vdivpd	%zmm6, %zmm13, %zmm12
	vdivpd	%zmm2, %zmm4, %zmm4
	vmovupd	%zmm12, (%rcx,%rsi,8)
	vmovupd	%zmm4, (%rdx,%rsi,8)
	addq	$8, %rsi
	vpaddd	%ymm3, %ymm11, %ymm11
	cmpq	$1000, %rsi                     # imm = 0x3E8
	jne	.LBB0_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB0_1 Depth=1
	incq	%rax
	addq	$8000, %rdx                     # imm = 0x1F40
	addq	$8000, %rcx                     # imm = 0x1F40
	cmpq	$1200, %rax                     # imm = 0x4B0
	jne	.LBB0_1
# %bb.4:                                # %.preheader.i.preheader
	xorl	%eax, %eax
	vpbroadcastd	.LCPI0_9(%rip), %ymm4   # ymm4 = [3,3,3,3,3,3,3,3]
	vmovdqa	.LCPI0_0(%rip), %ymm5           # ymm5 = [0,1,2,3,4,5,6,7]
	vpbroadcastd	.LCPI0_10(%rip), %ymm6  # ymm6 = [16,16,16,16,16,16,16,16]
	movq	%rbx, %rcx
	.p2align	4, 0x90
.LBB0_5:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	vmovd	%eax, %xmm7
	vpbroadcastd	%xmm7, %ymm7
	movl	$8, %edx
	vmovdqa	%ymm5, %ymm8
	.p2align	4, 0x90
.LBB0_6:                                # %vector.body25
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpmulld	%ymm7, %ymm8, %ymm9
	vpaddd	%ymm4, %ymm9, %ymm9
	vpshufd	$245, %ymm9, %ymm10             # ymm10 = ymm9[1,1,3,3,5,5,7,7]
	vpmuldq	%ymm0, %ymm9, %ymm11
	vpmuldq	%ymm0, %ymm10, %ymm10
	vpshufd	$245, %ymm11, %ymm11            # ymm11 = ymm11[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm10, %ymm11, %ymm10    # ymm10 = ymm11[0],ymm10[1],ymm11[2],ymm10[3],ymm11[4],ymm10[5],ymm11[6],ymm10[7]
	vpsrld	$31, %ymm10, %ymm11
	vpsrad	$7, %ymm10, %ymm10
	vpaddd	%ymm3, %ymm8, %ymm12
	vpmulld	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm4, %ymm12, %ymm12
	vpaddd	%ymm11, %ymm10, %ymm10
	vpshufd	$245, %ymm12, %ymm11            # ymm11 = ymm12[1,1,3,3,5,5,7,7]
	vpmuldq	%ymm0, %ymm11, %ymm11
	vpmuldq	%ymm0, %ymm12, %ymm13
	vpmulld	%ymm1, %ymm10, %ymm10
	vpshufd	$245, %ymm13, %ymm13            # ymm13 = ymm13[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm11, %ymm13, %ymm11    # ymm11 = ymm13[0],ymm11[1],ymm13[2],ymm11[3],ymm13[4],ymm11[5],ymm13[6],ymm11[7]
	vpsrld	$31, %ymm11, %ymm13
	vpsubd	%ymm10, %ymm9, %ymm9
	vpsrad	$7, %ymm11, %ymm10
	vpaddd	%ymm13, %ymm10, %ymm10
	vcvtdq2pd	%ymm9, %zmm9
	vpmulld	%ymm1, %ymm10, %ymm10
	vpsubd	%ymm10, %ymm12, %ymm10
	vcvtdq2pd	%ymm10, %zmm10
	vdivpd	%zmm2, %zmm9, %zmm9
	vdivpd	%zmm2, %zmm10, %zmm10
	vmovupd	%zmm9, -64(%rcx,%rdx,8)
	vmovupd	%zmm10, (%rcx,%rdx,8)
	vpaddd	%ymm6, %ymm8, %ymm8
	addq	$16, %rdx
	cmpq	$1208, %rdx                     # imm = 0x4B8
	jne	.LBB0_6
# %bb.7:                                # %middle.block21
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%rax
	addq	$9600, %rcx                     # imm = 0x2580
	cmpq	$1200, %rax                     # imm = 0x4B0
	jne	.LBB0_5
# %bb.8:                                # %init_array.exit
	vzeroupper
	callq	rtclock@PLT
	movq	polybench_t_start@GOTPCREL(%rip), %rax
	vmovq	%xmm0, (%rax)
	vpbroadcastq	%r14, %zmm0
	vmovdqa64	.LCPI0_11(%rip), %zmm1  # zmm1 = [0,8000000,16000000,24000000,32000000,40000000,48000000,56000000]
	vpaddq	%zmm1, %zmm0, %zmm0
	vpbroadcastq	%r15, %zmm2
	vpaddq	%zmm1, %zmm2, %zmm1
	movl	$1, %eax
	xorl	%ecx, %ecx
	vbroadcastsd	.LCPI0_12(%rip), %zmm2  # zmm2 = [1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0]
	vbroadcastsd	.LCPI0_13(%rip), %zmm3  # zmm3 = [1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0]
	vmovdqa	.LCPI0_0(%rip), %ymm4           # ymm4 = [0,1,2,3,4,5,6,7]
	movq	%rbx, %rdx
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_9:                                # %.loopexit.i
                                        #   in Loop: Header=BB0_10 Depth=1
	addq	$9600, %rdx                     # imm = 0x2580
	incq	%rax
	cmpq	$1200, %rcx                     # imm = 0x4B0
	je	.LBB0_24
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_20 Depth 3
	movq	%rcx, %rsi
	movq	%rcx, %r9
	shrq	$3, %r9
	incq	%r9
	movq	%r9, %rdi
	andq	$-2, %rdi
	incq	%rcx
	imulq	$9600, %rsi, %r8                # imm = 0x2580
	addq	%rbx, %r8
	movq	%rax, %r10
	xorl	%r11d, %r11d
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=2
	vmovd	%r10d, %xmm5
	vpbroadcastd	%xmm5, %ymm5
	vpcmpgtd	%zmm4, %zmm5, %k1
	vmovupd	(%rdx,%r11,8), %zmm5 {%k1} {z}
	vmulpd	%zmm2, %zmm5, %zmm5
	vmovupd	%zmm5, (%rdx,%r11,8) {%k1}
	incq	%r11
	addq	$-8, %r10
	cmpq	%r11, %r9
	je	.LBB0_15
.LBB0_11:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$8, %r10
	jl	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	vmulpd	(%rdx,%r11,8), %zmm2, %zmm5
	vmovupd	%zmm5, (%rdx,%r11,8)
	incq	%r11
	addq	$-8, %r10
	cmpq	%r11, %r9
	jne	.LBB0_11
.LBB0_15:                               # %.preheader.i2
                                        #   in Loop: Header=BB0_10 Depth=1
	imulq	$1000, %rsi, %r9                # imm = 0x3E8
	movl	$1000, %r10d                    # imm = 0x3E8
	xorl	%r11d, %r11d
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_23:                               # %.split4.us.i
                                        #   in Loop: Header=BB0_16 Depth=2
	incq	%r11
	incq	%r10
	cmpq	$1000, %r11                     # imm = 0x3E8
	je	.LBB0_9
.LBB0_16:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
	leaq	(,%r11,8), %r13
	cmpq	$992, %r13                      # imm = 0x3E0
	ja	.LBB0_23
# %bb.17:                               # %.split.us.i.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	leaq	(%r11,%r9), %r13
	vbroadcastsd	(%r14,%r13,8), %zmm5
	vbroadcastsd	(%r15,%r13,8), %zmm6
	cmpq	$8, %rsi
	jae	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_19:                               # %.split.us.i.preheader33
                                        #   in Loop: Header=BB0_16 Depth=2
	movq	%r10, %rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_20:                               # %.split.us.i
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	-1000(%rbp), %r12
	vpbroadcastq	%r12, %zmm7
	vpsllq	$3, %zmm7, %zmm7
	vpaddq	%zmm7, %zmm0, %zmm8
	vpxor	%xmm9, %xmm9, %xmm9
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(,%zmm8), %zmm9 {%k1}
	vpaddq	%zmm7, %zmm1, %zmm7
	vxorpd	%xmm8, %xmm8, %xmm8
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(,%zmm7), %zmm8 {%k1}
	vmulpd	%zmm3, %zmm9, %zmm7
	vmulpd	%zmm7, %zmm6, %zmm7
	vmulpd	%zmm3, %zmm8, %zmm8
	vfmadd213pd	%zmm7, %zmm5, %zmm8     # zmm8 = (zmm5 * zmm8) + zmm7
	vaddpd	(%rdx,%r13,8), %zmm8, %zmm7
	vmovupd	%zmm7, (%rdx,%r13,8)
	vpbroadcastq	%rbp, %zmm7
	vpsllq	$3, %zmm7, %zmm7
	vpaddq	%zmm7, %zmm0, %zmm8
	vxorpd	%xmm9, %xmm9, %xmm9
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(,%zmm8), %zmm9 {%k1}
	vpaddq	%zmm7, %zmm1, %zmm7
	vxorpd	%xmm8, %xmm8, %xmm8
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(,%zmm7), %zmm8 {%k1}
	vmulpd	%zmm3, %zmm9, %zmm7
	vmulpd	%zmm7, %zmm6, %zmm7
	vmulpd	%zmm3, %zmm8, %zmm8
	vfmadd213pd	%zmm7, %zmm5, %zmm8     # zmm8 = (zmm5 * zmm8) + zmm7
	vaddpd	8(%rdx,%r13,8), %zmm8, %zmm7
	vmovupd	%zmm7, 8(%rdx,%r13,8)
	addq	$2, %r13
	addq	$2000, %rbp                     # imm = 0x7D0
	cmpq	%r13, %rdi
	jne	.LBB0_20
.LBB0_21:                               # %.split4.us.i.loopexit.unr-lcssa
                                        #   in Loop: Header=BB0_16 Depth=2
	testb	$8, %sil
	jne	.LBB0_23
# %bb.22:                               # %.split.us.i.epil
                                        #   in Loop: Header=BB0_16 Depth=2
	imulq	$1000, %r13, %r12               # imm = 0x3E8
	addq	%r11, %r12
	vpbroadcastq	%r12, %zmm7
	vpsllq	$3, %zmm7, %zmm7
	vpaddq	%zmm7, %zmm0, %zmm8
	vxorpd	%xmm9, %xmm9, %xmm9
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(,%zmm8), %zmm9 {%k1}
	vpaddq	%zmm7, %zmm1, %zmm7
	vxorpd	%xmm8, %xmm8, %xmm8
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(,%zmm7), %zmm8 {%k1}
	vmulpd	%zmm3, %zmm9, %zmm7
	vmulpd	%zmm7, %zmm6, %zmm6
	vmulpd	%zmm3, %zmm8, %zmm7
	vfmadd213pd	%zmm6, %zmm7, %zmm5     # zmm5 = (zmm7 * zmm5) + zmm6
	vaddpd	(%r8,%r13,8), %zmm5, %zmm5
	vmovupd	%zmm5, (%r8,%r13,8)
	jmp	.LBB0_23
.LBB0_24:
	vzeroupper
	callq	rtclock@PLT
	movq	polybench_t_end@GOTPCREL(%rip), %rax
	vmovq	%xmm0, (%rax)
	movq	polybench_t_start@GOTPCREL(%rip), %rax
	vsubsd	(%rax), %xmm0, %xmm0
	leaq	str0(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	vmovsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	vmovsd	8(%rbx), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	vmovsd	16(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	vmovsd	24(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	vmovsd	32(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	vmovsd	40(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vmovsd	48(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	vmovsd	56(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	vmovsd	64(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	vmovsd	72(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 80(%rsp)                 # 8-byte Spill
	vmovsd	80(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 88(%rsp)                 # 8-byte Spill
	vmovsd	88(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 96(%rsp)                 # 8-byte Spill
	vmovsd	96(%rbx), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 104(%rsp)                # 8-byte Spill
	vmovsd	104(%rbx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, 112(%rsp)                # 8-byte Spill
	vmovsd	112(%rbx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, 120(%rsp)                # 8-byte Spill
	vmovsd	120(%rbx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, 128(%rsp)                # 8-byte Spill
	vmovsd	128(%rbx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, 136(%rsp)                # 8-byte Spill
	vmovsd	136(%rbx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, 144(%rsp)                # 8-byte Spill
	vmovsd	144(%rbx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, 152(%rsp)                # 8-byte Spill
	vmovsd	152(%rbx), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, 160(%rsp)                # 8-byte Spill
	callq	printOpen@PLT
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	72(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	80(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	88(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	96(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	104(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	112(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	120(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	128(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	136(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	144(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	152(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printComma@PLT
	vmovsd	160(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	printF64@PLT
	callq	printClose@PLT
	callq	printNewline@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	xorl	%eax, %eax
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	polybench_timer_start           # -- Begin function polybench_timer_start
	.p2align	4, 0x90
	.type	polybench_timer_start,@function
polybench_timer_start:                  # @polybench_timer_start
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	rtclock@PLT
	movq	polybench_t_start@GOTPCREL(%rip), %rax
	vmovsd	%xmm0, (%rax)
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	polybench_timer_start, .Lfunc_end1-polybench_timer_start
	.cfi_endproc
                                        # -- End function
	.globl	polybench_timer_stop            # -- Begin function polybench_timer_stop
	.p2align	4, 0x90
	.type	polybench_timer_stop,@function
polybench_timer_stop:                   # @polybench_timer_stop
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	rtclock@PLT
	movq	polybench_t_end@GOTPCREL(%rip), %rax
	vmovsd	%xmm0, (%rax)
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	polybench_timer_stop, .Lfunc_end2-polybench_timer_stop
	.cfi_endproc
                                        # -- End function
	.globl	polybench_timer_print           # -- Begin function polybench_timer_print
	.p2align	4, 0x90
	.type	polybench_timer_print,@function
polybench_timer_print:                  # @polybench_timer_print
# %bb.0:
	movq	polybench_t_end@GOTPCREL(%rip), %rax
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movq	polybench_t_start@GOTPCREL(%rip), %rax
	vsubsd	(%rax), %xmm0, %xmm0
	leaq	str0(%rip), %rdi
	movb	$1, %al
	jmp	printf@PLT                      # TAILCALL
.Lfunc_end3:
	.size	polybench_timer_print, .Lfunc_end3-polybench_timer_print
                                        # -- End function
	.globl	polybench_prepare_instruments   # -- Begin function polybench_prepare_instruments
	.p2align	4, 0x90
	.type	polybench_prepare_instruments,@function
polybench_prepare_instruments:          # @polybench_prepare_instruments
# %bb.0:
	retq
.Lfunc_end4:
	.size	polybench_prepare_instruments, .Lfunc_end4-polybench_prepare_instruments
                                        # -- End function
	.type	str0,@object                    # @str0
	.section	.rodata,"a",@progbits
str0:
	.asciz	"%0.6f\n"
	.size	str0, 7

	.type	polybench_t_end,@object         # @polybench_t_end
	.bss
	.globl	polybench_t_end
	.p2align	3, 0x0
polybench_t_end:
	.zero	8
	.size	polybench_t_end, 8

	.type	polybench_t_start,@object       # @polybench_t_start
	.globl	polybench_t_start
	.p2align	3, 0x0
polybench_t_start:
	.zero	8
	.size	polybench_t_start, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym str0
