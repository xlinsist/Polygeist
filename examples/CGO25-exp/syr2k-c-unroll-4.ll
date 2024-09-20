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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
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
	movq	%rax, %r12
	movq	%rax, %r14
	movl	$9600000, %edi                  # imm = 0x927C00
	callq	malloc@PLT
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	vmovdqa64	.LCPI0_0(%rip), %zmm16  # zmm16 = [0,1,2,3,4,5,6,7]
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	vpbroadcastd	.LCPI0_1(%rip), %ymm0   # ymm0 = [458129845,458129845,458129845,458129845,458129845,458129845,458129845,458129845]
	vpbroadcastd	.LCPI0_2(%rip), %ymm1   # ymm1 = [1200,1200,1200,1200,1200,1200,1200,1200]
	vbroadcastsd	.LCPI0_3(%rip), %zmm6   # zmm6 = [1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3,1.2E+3]
	vpbroadcastd	.LCPI0_4(%rip), %ymm7   # ymm7 = [2,2,2,2,2,2,2,2]
	vpbroadcastd	.LCPI0_5(%rip), %ymm8   # ymm8 = [274877907,274877907,274877907,274877907,274877907,274877907,274877907,274877907]
	vpbroadcastd	.LCPI0_6(%rip), %ymm9   # ymm9 = [1000,1000,1000,1000,1000,1000,1000,1000]
	vbroadcastsd	.LCPI0_7(%rip), %zmm2   # zmm2 = [1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3,1.0E+3]
	vpbroadcastq	.LCPI0_8(%rip), %zmm3   # zmm3 = [8,8,8,8,8,8,8,8]
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	movq	%r14, %rsi
	.p2align	4, 0x90
.LBB0_1:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	vpbroadcastq	%rcx, %zmm10
	vpmovqd	%zmm10, %ymm10
	xorl	%edi, %edi
	vmovdqa64	%zmm16, %zmm11
	.p2align	4, 0x90
.LBB0_2:                                # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpmovqd	%zmm11, %ymm12
	vpmulld	%ymm10, %ymm12, %ymm12
	vpsubd	%ymm5, %ymm12, %ymm13
	vpshufd	$245, %ymm13, %ymm14            # ymm14 = ymm13[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm0, %ymm14, %ymm14
	vpmuludq	%ymm0, %ymm13, %ymm15
	vpshufd	$245, %ymm15, %ymm15            # ymm15 = ymm15[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm14, %ymm15, %ymm14    # ymm14 = ymm15[0],ymm14[1],ymm15[2],ymm14[3],ymm15[4],ymm14[5],ymm15[6],ymm14[7]
	vpsrld	$7, %ymm14, %ymm14
	vpaddd	%ymm7, %ymm12, %ymm12
	vpshufd	$245, %ymm12, %ymm15            # ymm15 = ymm12[1,1,3,3,5,5,7,7]
	vpmulld	%ymm1, %ymm14, %ymm14
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
	vdivpd	%zmm2, %zmm4, %zmm4
	vmovupd	%zmm12, (%rsi,%rdi,8)
	vmovupd	%zmm4, (%rdx,%rdi,8)
	addq	$8, %rdi
	vpaddq	%zmm3, %zmm11, %zmm11
	cmpq	$1000, %rdi                     # imm = 0x3E8
	jne	.LBB0_2
# %bb.3:                                # %for.inc17.i
                                        #   in Loop: Header=BB0_1 Depth=1
	incq	%rcx
	addq	$8000, %rsi                     # imm = 0x1F40
	addq	$8000, %rdx                     # imm = 0x1F40
	cmpq	$1200, %rcx                     # imm = 0x4B0
	jne	.LBB0_1
# %bb.4:                                # %vector.ph27.preheader
	xorl	%ecx, %ecx
	vmovdqa64	.LCPI0_0(%rip), %zmm4   # zmm4 = [0,1,2,3,4,5,6,7]
	vpbroadcastd	.LCPI0_9(%rip), %ymm5   # ymm5 = [3,3,3,3,3,3,3,3]
	movq	%rbx, %rdx
	.p2align	4, 0x90
.LBB0_5:                                # %vector.ph27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	vpbroadcastq	%rcx, %zmm6
	vpmovqd	%zmm6, %ymm6
	xorl	%esi, %esi
	vmovdqa64	%zmm4, %zmm7
	.p2align	4, 0x90
.LBB0_6:                                # %vector.body29
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpmovqd	%zmm7, %ymm8
	vpmulld	%ymm6, %ymm8, %ymm8
	vpaddd	%ymm5, %ymm8, %ymm8
	vpshufd	$245, %ymm8, %ymm9              # ymm9 = ymm8[1,1,3,3,5,5,7,7]
	vpmuludq	%ymm0, %ymm9, %ymm9
	vpmuludq	%ymm0, %ymm8, %ymm10
	vpshufd	$245, %ymm10, %ymm10            # ymm10 = ymm10[1,1,3,3,5,5,7,7]
	vpblendd	$170, %ymm9, %ymm10, %ymm9      # ymm9 = ymm10[0],ymm9[1],ymm10[2],ymm9[3],ymm10[4],ymm9[5],ymm10[6],ymm9[7]
	vpsrld	$7, %ymm9, %ymm9
	vpmulld	%ymm1, %ymm9, %ymm9
	vpsubd	%ymm9, %ymm8, %ymm8
	vcvtdq2pd	%ymm8, %zmm8
	vdivpd	%zmm2, %zmm8, %zmm8
	vmovupd	%zmm8, (%rdx,%rsi,8)
	addq	$8, %rsi
	vpaddq	%zmm3, %zmm7, %zmm7
	cmpq	$1200, %rsi                     # imm = 0x4B0
	jne	.LBB0_6
# %bb.7:                                # %for.inc41.i
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%rcx
	addq	$9600, %rdx                     # imm = 0x2580
	cmpq	$1200, %rcx                     # imm = 0x4B0
	jne	.LBB0_5
# %bb.8:                                # %for.cond1.preheader.i18.preheader
	leaq	192(%rbx), %rcx
	addq	$24, %r12
	addq	$24, %rax
	movl	$1, %edx
	xorl	%esi, %esi
	vmovsd	.LCPI0_10(%rip), %xmm0          # xmm0 = mem[0],zero
	vmovsd	.LCPI0_11(%rip), %xmm1          # xmm1 = mem[0],zero
	vbroadcastsd	.LCPI0_10(%rip), %zmm2  # zmm2 = [1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0,1.2E+0]
	movabsq	$9223372036854775776, %rdi      # imm = 0x7FFFFFFFFFFFFFE0
	movq	%rax, %r8
	movq	%r12, %r9
	movq	%rbx, %r10
	.p2align	4, 0x90
.LBB0_9:                                # %for.cond1.preheader.i18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_17 Depth 3
	cmpq	$32, %rdx
	jae	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	xorl	%r11d, %r11d
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_12:                               # %vector.ph38
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%rdx, %r14
	andq	$-32, %r14
	movq	%rdx, %r11
	andq	%rdi, %r11
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_13:                               # %vector.body40
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulpd	-192(%rcx,%r15,8), %zmm2, %zmm3
	vmulpd	-128(%rcx,%r15,8), %zmm2, %zmm4
	vmulpd	-64(%rcx,%r15,8), %zmm2, %zmm5
	vmulpd	(%rcx,%r15,8), %zmm2, %zmm6
	vmovupd	%zmm3, -192(%rcx,%r15,8)
	vmovupd	%zmm4, -128(%rcx,%r15,8)
	vmovupd	%zmm5, -64(%rcx,%r15,8)
	vmovupd	%zmm6, (%rcx,%r15,8)
	addq	$32, %r15
	cmpq	%r15, %r14
	jne	.LBB0_13
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_11:                               # %for.body3.i20
                                        #   in Loop: Header=BB0_9 Depth=1
	vmulsd	(%r10,%r11,8), %xmm0, %xmm3
	vmovsd	%xmm3, (%r10,%r11,8)
	incq	%r11
.LBB0_14:                               # %for.body3.i20
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpq	%r11, %rdx
	jne	.LBB0_11
# %bb.15:                               # %for.cond9.preheader.i.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%r12, %r11
	movq	%rax, %r13
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_16:                               # %for.cond9.preheader.i
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
	imulq	$9600, %rsi, %r15               # imm = 0x2580
	addq	%rbx, %r15
	leaq	(%r15,%rbp,8), %r14
	vmovsd	(%r15,%rbp,8), %xmm3            # xmm3 = mem[0],zero
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_17:                               # %for.body11.i
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmulsd	-24(%r11,%r15), %xmm1, %xmm4
	vmulsd	-24(%r13,%r15), %xmm1, %xmm5
	vmulsd	-24(%r9,%r15), %xmm5, %xmm5
	vfmadd231sd	-24(%r8,%r15), %xmm4, %xmm5 # xmm5 = (xmm4 * mem) + xmm5
	vmulsd	-16(%r11,%r15), %xmm1, %xmm4
	vmulsd	-16(%r13,%r15), %xmm1, %xmm6
	vmulsd	-16(%r9,%r15), %xmm6, %xmm6
	vaddsd	%xmm5, %xmm3, %xmm3
	vfmadd231sd	-16(%r8,%r15), %xmm4, %xmm6 # xmm6 = (xmm4 * mem) + xmm6
	vaddsd	%xmm6, %xmm3, %xmm3
	vmulsd	-8(%r11,%r15), %xmm1, %xmm4
	vmulsd	-8(%r13,%r15), %xmm1, %xmm5
	vmulsd	-8(%r9,%r15), %xmm5, %xmm5
	vfmadd231sd	-8(%r8,%r15), %xmm4, %xmm5 # xmm5 = (xmm4 * mem) + xmm5
	vmulsd	(%r11,%r15), %xmm1, %xmm4
	vmulsd	(%r13,%r15), %xmm1, %xmm6
	vmulsd	(%r9,%r15), %xmm6, %xmm6
	vfmadd231sd	(%r8,%r15), %xmm4, %xmm6 # xmm6 = (xmm4 * mem) + xmm6
	vaddsd	%xmm5, %xmm3, %xmm3
	vaddsd	%xmm6, %xmm3, %xmm3
	addq	$32, %r15
	cmpq	$8000, %r15                     # imm = 0x1F40
	jne	.LBB0_17
# %bb.18:                               # %for.inc39.i
                                        #   in Loop: Header=BB0_16 Depth=2
	vmovsd	%xmm3, (%r14)
	incq	%rbp
	addq	$8000, %r13                     # imm = 0x1F40
	addq	$8000, %r11                     # imm = 0x1F40
	cmpq	%rdx, %rbp
	jne	.LBB0_16
# %bb.19:                               # %for.inc42.i
                                        #   in Loop: Header=BB0_9 Depth=1
	incq	%rsi
	incq	%rdx
	addq	$9600, %rcx                     # imm = 0x2580
	addq	$9600, %r10                     # imm = 0x2580
	addq	$8000, %r9                      # imm = 0x1F40
	addq	$8000, %r8                      # imm = 0x1F40
	cmpq	$1200, %rsi                     # imm = 0x4B0
	jne	.LBB0_9
# %bb.20:                               # %kernel_syr2k.exit
	movq	%rbx, %rdi
	vzeroupper
	callq	free@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	free@PLT
	xorl	%eax, %eax
	addq	$24, %rsp
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
