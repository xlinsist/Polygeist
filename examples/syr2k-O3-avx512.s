	.text
	.file	"syr2k.c"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
.LCPI0_9:
	.long	3                               # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_3:
	.quad	0x4092c00000000000              # double 1200
.LCPI0_7:
	.quad	0x408f400000000000              # double 1000
.LCPI0_8:
	.quad	8                               # 0x8
.LCPI0_10:
	.quad	0x3ff3333333333333              # double 1.2
.LCPI0_11:
	.quad	8000                            # 0x1f40
.LCPI0_12:
	.quad	0x3ff8000000000000              # double 1.5
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
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
	pushq	%rax
	.cfi_def_cfa_offset 64
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
	vmovdqa64	.LCPI0_0(%rip), %zmm16  # zmm16 = [0,1,2,3,4,5,6,7]
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	vpbroadcastd	.LCPI0_1(%rip), %ymm1   # ymm1 = [458129845,458129845,458129845,458129845,458129845,458129845,458129845,458129845]
	vpbroadcastd	.LCPI0_2(%rip), %ymm2   # ymm2 = [1200,1200,1200,1200,1200,1200,1200,1200]
	vbroadcastsd	.LCPI0_3(%rip), %zmm6   # zmm6 = [1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3]
	vpbroadcastd	.LCPI0_4(%rip), %ymm7   # ymm7 = [2,2,2,2,2,2,2,2]
	vpbroadcastd	.LCPI0_5(%rip), %ymm8   # ymm8 = [274877907,274877907,274877907,274877907,274877907,274877907,274877907,274877907]
	vpbroadcastd	.LCPI0_6(%rip), %ymm9   # ymm9 = [1000,1000,1000,1000,1000,1000,1000,1000]
	vbroadcastsd	.LCPI0_7(%rip), %zmm3   # zmm3 = [1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3]
	vpbroadcastq	.LCPI0_8(%rip), %zmm0   # zmm0 = [8,8,8,8,8,8,8,8]
	movq	%r15, %rcx
	movq	%r14, %rdx
	.p2align	4, 0x90
.LBB0_1:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	vpbroadcastq	%rax, %zmm10
	vpmovqd	%zmm10, %ymm10
	xorl	%esi, %esi
	vmovdqa64	%zmm16, %zmm11
	.p2align	4, 0x90
.LBB0_2:                                # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpmovqd	%zmm11, %ymm12
	vpmulld	%ymm10, %ymm12, %ymm12
	vpsubd	%ymm5, %ymm12, %ymm13
	vpshufd	$245, %ymm13, %ymm14            # ymm14 = ymm13[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm1, %ymm14, %ymm14
	vpmuludq	%ymm1, %ymm13, %ymm15
	vpshufd	$245, %ymm15, %ymm15            # ymm15 = ymm15[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm14, %ymm15, %ymm14    # ymm14 = ymm15[0],ymm14[1],ymm15[2],ymm14[3],ymm15[4],ymm14[5],ymm15[6],ymm14[7]
	vpsrld	$7, %ymm14, %ymm14
	vpaddd	%ymm7, %ymm12, %ymm12
	vpshufd	$245, %ymm12, %ymm15            # ymm15 = ymm12[1,1,3,3,5,5,7,7]
	vpmulld	%ymm2, %ymm14, %ymm14
	vpmuludq	%ymm8, %ymm15, %ymm15
	vpmuludq	%ymm8, %ymm12, %ymm4
	vpshufd	$245, %ymm4, %ymm4              # ymm4 = ymm4[1,1,3,3,5,5,7,7]
	vpsubd	%ymm14, %ymm13, %ymm13
	vpblendd	$170, %ymm15, %ymm4, %ymm4      # ymm4 = ymm4[0],ymm15[1],ymm4[2],ymm15[3],ymm4[4],ymm15[5],ymm4[6],ymm15[7]
	vpsrld	$6, %ymm4, %ymm4
	vcvtdq2pd	%ymm13, %zmm13
	vpmulld	%ymm9, %ymm4, %ymm4
	vpsubd	%ymm4, %ymm12, %ymm4
	vcvtdq2pd	%ymm4, %zmm4
	vdivpd	%zmm6, %zmm13, %zmm12
	vdivpd	%zmm3, %zmm4, %zmm4
	vmovupd	%zmm12, (%rdx,%rsi,8)
	vmovupd	%zmm4, (%rcx,%rsi,8)
	addq	$8, %rsi
	vpaddq	%zmm0, %zmm11, %zmm11
	cmpq	$1000, %rsi                     # imm = 0x3E8
	jne	.LBB0_2
# %bb.3:                                # %for.inc17.i
                                        #   in Loop: Header=BB0_1 Depth=1
	incq	%rax
	addq	$8000, %rdx                     # imm = 0x1F40
	addq	$8000, %rcx                     # imm = 0x1F40
	cmpq	$1200, %rax                     # imm = 0x4B0
	jne	.LBB0_1
# %bb.4:                                # %vector.ph26.preheader
	xorl	%eax, %eax
	vmovdqa64	.LCPI0_0(%rip), %zmm4   # zmm4 = [0,1,2,3,4,5,6,7]
	vpbroadcastd	.LCPI0_9(%rip), %ymm5   # ymm5 = [3,3,3,3,3,3,3,3]
	movq	%rbx, %rcx
	.p2align	4, 0x90
.LBB0_5:                                # %vector.ph26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	vpbroadcastq	%rax, %zmm6
	vpmovqd	%zmm6, %ymm6
	xorl	%edx, %edx
	vmovdqa64	%zmm4, %zmm7
	.p2align	4, 0x90
.LBB0_6:                                # %vector.body28
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpmovqd	%zmm7, %ymm8
	vpmulld	%ymm6, %ymm8, %ymm8
	vpaddd	%ymm5, %ymm8, %ymm8
	vpshufd	$245, %ymm8, %ymm9              # ymm9 = ymm8[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm1, %ymm9, %ymm9
	vpmuludq	%ymm1, %ymm8, %ymm10
	vpshufd	$245, %ymm10, %ymm10            # ymm10 = ymm10[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm9, %ymm10, %ymm9      # ymm9 = ymm10[0],ymm9[1],ymm10[2],ymm9[3],ymm10[4],ymm9[5],ymm10[6],ymm9[7]
	vpsrld	$7, %ymm9, %ymm9
	vpmulld	%ymm2, %ymm9, %ymm9
	vpsubd	%ymm9, %ymm8, %ymm8
	vcvtdq2pd	%ymm8, %zmm8
	vdivpd	%zmm3, %zmm8, %zmm8
	vmovupd	%zmm8, (%rcx,%rdx,8)
	addq	$8, %rdx
	vpaddq	%zmm0, %zmm7, %zmm7
	cmpq	$1200, %rdx                     # imm = 0x4B0
	jne	.LBB0_6
# %bb.7:                                # %for.inc41.i
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%rax
	addq	$9600, %rcx                     # imm = 0x2580
	cmpq	$1200, %rax                     # imm = 0x4B0
	jne	.LBB0_5
# %bb.8:                                # %for.cond1.preheader.i18.preheader
	movabsq	$9223372036854775776, %rax      # imm = 0x7FFFFFFFFFFFFFE0
	movq	%rbx, %rcx
	addq	$192, %rcx
	movl	$1, %edx
	xorl	%esi, %esi
	vmovsd	.LCPI0_10(%rip), %xmm1          # xmm1 = mem[0],zero
	vmovsd	.LCPI0_12(%rip), %xmm2          # xmm2 = mem[0],zero
	vpbroadcastq	.LCPI0_11(%rip), %zmm3  # zmm3 = [8000,8000,8000,8000,8000,8000,8000,8000]
	vmovdqa64	.LCPI0_0(%rip), %zmm4   # zmm4 = [0,1,2,3,4,5,6,7]
	vpbroadcastq	%r14, %zmm5
	vbroadcastsd	.LCPI0_12(%rip), %zmm6  # zmm6 = [1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0]
	vpbroadcastq	%r15, %zmm7
	vbroadcastsd	.LCPI0_10(%rip), %zmm8  # zmm8 = [1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0]
	movq	%rbx, %rdi
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_24:                               # %for.inc42.i
                                        #   in Loop: Header=BB0_9 Depth=1
	incq	%rsi
	incq	%rdx
	addq	$9600, %rcx                     # imm = 0x2580
	addq	$9600, %rdi                     # imm = 0x2580
	cmpq	$1200, %rsi                     # imm = 0x4B0
	je	.LBB0_25
.LBB0_9:                                # %for.cond1.preheader.i18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_22 Depth 3
	cmpq	$32, %rdx
	jae	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_12:                               # %vector.ph52
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%rdx, %r9
	andq	$-32, %r9
	movq	%rdx, %r8
	andq	%rax, %r8
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB0_13:                               # %vector.body57
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulpd	-192(%rcx,%r10,8), %zmm8, %zmm9
	vmulpd	-128(%rcx,%r10,8), %zmm8, %zmm10
	vmulpd	-64(%rcx,%r10,8), %zmm8, %zmm11
	vmulpd	(%rcx,%r10,8), %zmm8, %zmm12
	vmovupd	%zmm9, -192(%rcx,%r10,8)
	vmovupd	%zmm10, -128(%rcx,%r10,8)
	vmovupd	%zmm11, -64(%rcx,%r10,8)
	vmovupd	%zmm12, (%rcx,%r10,8)
	addq	$32, %r10
	cmpq	%r10, %r9
	jne	.LBB0_13
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_11:                               # %for.body3.i19
                                        #   in Loop: Header=BB0_9 Depth=1
	vmulsd	(%rdi,%r8,8), %xmm1, %xmm9
	vmovsd	%xmm9, (%rdi,%r8,8)
	incq	%r8
.LBB0_14:                               # %for.body3.i19
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpq	%r8, %rdx
	jne	.LBB0_11
# %bb.15:                               # %for.cond9.preheader.i.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%rdx, %r8
	andq	$-8, %r8
	leaq	24(%rax), %r9
	andq	%rdx, %r9
	movq	%r14, %r10
	movq	%r15, %r11
	xorl	%r12d, %r12d
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_23:                               # %for.inc39.i
                                        #   in Loop: Header=BB0_16 Depth=2
	incq	%r12
	addq	$8, %r11
	addq	$8, %r10
	cmpq	$1000, %r12                     # imm = 0x3E8
	je	.LBB0_24
.LBB0_16:                               # %for.cond9.preheader.i
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_22 Depth 3
	imulq	$8000, %rsi, %r13               # imm = 0x1F40
	leaq	(%r15,%r13), %rbp
	addq	%r14, %r13
	vmovsd	(%rbp,%r12,8), %xmm9            # xmm9 = mem[0],zero
	vmovsd	(%r13,%r12,8), %xmm10           # xmm10 = mem[0],zero
	cmpq	$8, %rdx
	jae	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_18:                               # %vector.ph37
                                        #   in Loop: Header=BB0_16 Depth=2
	vbroadcastsd	%xmm10, %zmm11
	vbroadcastsd	%xmm9, %zmm12
	vpbroadcastq	%r12, %zmm13
	vpsllq	$3, %zmm13, %zmm14
	vpaddq	%zmm14, %zmm5, %zmm13
	vpaddq	%zmm14, %zmm7, %zmm14
	xorl	%r13d, %r13d
	vmovdqa64	%zmm4, %zmm15
	.p2align	4, 0x90
.LBB0_19:                               # %vector.body39
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vpmuludq	%zmm3, %zmm15, %zmm16
	vpsrlq	$32, %zmm15, %zmm17
	vpmuludq	%zmm3, %zmm17, %zmm17
	vpsllq	$32, %zmm17, %zmm17
	vpaddq	%zmm17, %zmm16, %zmm16
	vpaddq	%zmm16, %zmm13, %zmm17
	vpxord	%zmm18, %zmm18, %zmm18
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(,%zmm17), %zmm18 {%k1}
	vmulpd	%zmm6, %zmm18, %zmm17
	vpaddq	%zmm16, %zmm14, %zmm16
	vpxord	%zmm18, %zmm18, %zmm18
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(,%zmm16), %zmm18 {%k1}
	vmulpd	%zmm6, %zmm18, %zmm16
	vmulpd	%zmm11, %zmm16, %zmm16
	vfmadd231pd	%zmm17, %zmm12, %zmm16  # zmm16 = (zmm12 * zmm17) + zmm16
	vaddpd	(%rdi,%r13,8), %zmm16, %zmm16
	vmovupd	%zmm16, (%rdi,%r13,8)
	addq	$8, %r13
	vpaddq	%zmm0, %zmm15, %zmm15
	cmpq	%r13, %r8
	jne	.LBB0_19
# %bb.20:                               # %middle.block35
                                        #   in Loop: Header=BB0_16 Depth=2
	movq	%r9, %r13
	cmpq	%r9, %rdx
	je	.LBB0_23
.LBB0_21:                               # %for.body11.i.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	imulq	$8000, %r13, %rbp               # imm = 0x1F40
	.p2align	4, 0x90
.LBB0_22:                               # %for.body11.i
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmulsd	(%r10,%rbp), %xmm2, %xmm11
	vmulsd	(%r11,%rbp), %xmm2, %xmm12
	vmulsd	%xmm10, %xmm12, %xmm12
	vfmadd231sd	%xmm11, %xmm9, %xmm12   # xmm12 = (xmm9 * xmm11) + xmm12
	vaddsd	(%rdi,%r13,8), %xmm12, %xmm11
	vmovsd	%xmm11, (%rdi,%r13,8)
	incq	%r13
	addq	$8000, %rbp                     # imm = 0x1F40
	cmpq	%r13, %rdx
	jne	.LBB0_22
	jmp	.LBB0_23
.LBB0_25:                               # %kernel_syr2k.exit
	movq	%rbx, %rdi
	vzeroupper
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
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
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 6c59f0e1b0fb56c909ad7c9aad4bde37dc006ae0)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
