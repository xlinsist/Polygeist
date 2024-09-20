	.text
	.file	"mvt.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0x409f400000000000              # double 2000
.LCPI0_5:
	.quad	4                               # 0x4
.LCPI0_6:
	.quad	8                               # 0x8
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_1:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_2:
	.long	274877907                       # 0x10624dd3
.LCPI0_4:
	.long	2000                            # 0x7d0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	3                               # 0x3
	.long	7                               # 0x7
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
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movl	%edi, %ebp
	movl	$32000000, %edi                 # imm = 0x1E84800
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	$16000, %edi                    # imm = 0x3E80
	callq	malloc@PLT
	movq	%rax, %r14
	movl	$16000, %edi                    # imm = 0x3E80
	callq	malloc@PLT
	movq	%rax, %r15
	movl	$16000, %edi                    # imm = 0x3E80
	callq	malloc@PLT
	movq	%rax, %r12
	movl	$16000, %edi                    # imm = 0x3E80
	callq	malloc@PLT
	movq	%rax, %r13
	xorl	%edx, %edx
	vmovsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	vmovdqa	.LCPI0_1(%rip), %ymm1           # ymm1 = [0,1,2,3]
	vpbroadcastd	.LCPI0_2(%rip), %xmm2   # xmm2 = [274877907,274877907,274877907,274877907]
	vmovdqa	.LCPI0_3(%rip), %xmm3           # xmm3 = [1,5,3,7]
	vpbroadcastd	.LCPI0_4(%rip), %xmm4   # xmm4 = [2000,2000,2000,2000]
	vbroadcastsd	.LCPI0_0(%rip), %ymm5   # ymm5 = [2.0E+3,2.0E+3,2.0E+3,2.0E+3]
	vpbroadcastq	.LCPI0_5(%rip), %ymm6   # ymm6 = [4,4,4,4]
	vpbroadcastq	.LCPI0_6(%rip), %ymm7   # ymm7 = [8,8,8,8]
	movq	%rbx, %rax
	.p2align	4, 0x90
.LBB0_1:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	vcvtsi2sd	%edx, %xmm15, %xmm8
	vdivsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, (%r14,%rdx,8)
	leaq	1(%rdx), %rcx
	vxorpd	%xmm8, %xmm8, %xmm8
	cmpq	$2000, %rcx                     # imm = 0x7D0
	je	.LBB0_3
# %bb.2:                                # %select.false.sink
                                        #   in Loop: Header=BB0_1 Depth=1
	vcvtsi2sd	%ecx, %xmm15, %xmm8
	vdivsd	%xmm0, %xmm8, %xmm8
.LBB0_3:                                # %select.end
                                        #   in Loop: Header=BB0_1 Depth=1
	vmovsd	%xmm8, (%r15,%rdx,8)
	leal	-1997(%rdx), %esi
	leal	3(%rdx), %edi
	cmpq	$1997, %rdx                     # imm = 0x7CD
	cmovael	%esi, %edi
	vcvtsi2sd	%edi, %xmm15, %xmm8
	vdivsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, (%r12,%rdx,8)
	leal	-1996(%rdx), %esi
	leal	4(%rdx), %edi
	cmpq	$1996, %rdx                     # imm = 0x7CC
	cmovael	%esi, %edi
	vcvtsi2sd	%edi, %xmm15, %xmm8
	vdivsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, (%r13,%rdx,8)
	vpbroadcastq	%rdx, %ymm8
	movl	$4, %edx
	vmovdqa	%ymm1, %ymm9
	.p2align	4, 0x90
.LBB0_4:                                # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpmullq	%ymm8, %ymm9, %ymm10
	vpmovqd	%ymm10, %xmm10
	vpmuludq	%xmm2, %xmm10, %xmm11
	vpsrlq	$32, %xmm10, %xmm12
	vpmuludq	%xmm2, %xmm12, %xmm12
	vpermt2d	%xmm12, %xmm3, %xmm11
	vpsrld	$7, %xmm11, %xmm11
	vpaddq	%ymm6, %ymm9, %ymm12
	vpmullq	%ymm8, %ymm12, %ymm12
	vpmulld	%xmm4, %xmm11, %xmm11
	vpmovqd	%ymm12, %xmm12
	vpmuludq	%xmm2, %xmm12, %xmm13
	vpsrlq	$32, %xmm12, %xmm14
	vpmuludq	%xmm2, %xmm14, %xmm14
	vpsubd	%xmm11, %xmm10, %xmm10
	vpermt2d	%xmm14, %xmm3, %xmm13
	vpsrld	$7, %xmm13, %xmm11
	vpmulld	%xmm4, %xmm11, %xmm11
	vcvtdq2pd	%xmm10, %ymm10
	vdivpd	%ymm5, %ymm10, %ymm10
	vpsubd	%xmm11, %xmm12, %xmm11
	vcvtdq2pd	%xmm11, %ymm11
	vmovupd	%ymm10, -32(%rax,%rdx,8)
	vdivpd	%ymm5, %ymm11, %ymm10
	vmovupd	%ymm10, (%rax,%rdx,8)
	vpaddq	%ymm7, %ymm9, %ymm9
	addq	$8, %rdx
	cmpq	$2004, %rdx                     # imm = 0x7D4
	jne	.LBB0_4
# %bb.5:                                # %middle.block
                                        #   in Loop: Header=BB0_1 Depth=1
	addq	$16000, %rax                    # imm = 0x3E80
	movq	%rcx, %rdx
	cmpq	$2000, %rcx                     # imm = 0x7D0
	jne	.LBB0_1
# %bb.6:                                # %for.cond1.preheader.i.preheader
	xorl	%eax, %eax
	movq	%rbx, %rcx
	.p2align	4, 0x90
.LBB0_7:                                # %for.cond1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	vmovsd	(%r14,%rax,8), %xmm0            # xmm0 = mem[0],zero
	movl	$7, %edx
	.p2align	4, 0x90
.LBB0_8:                                # %for.body3.i
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	-56(%rcx,%rdx,8), %xmm1         # xmm1 = mem[0],zero
	vmovsd	-48(%rcx,%rdx,8), %xmm2         # xmm2 = mem[0],zero
	vfmadd132sd	-56(%r12,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vfmadd231sd	-48(%r12,%rdx,8), %xmm2, %xmm1 # xmm1 = (xmm2 * mem) + xmm1
	vmovsd	-40(%rcx,%rdx,8), %xmm0         # xmm0 = mem[0],zero
	vfmadd132sd	-40(%r12,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	-32(%rcx,%rdx,8), %xmm1         # xmm1 = mem[0],zero
	vfmadd132sd	-32(%r12,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	-24(%rcx,%rdx,8), %xmm0         # xmm0 = mem[0],zero
	vfmadd132sd	-24(%r12,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	-16(%rcx,%rdx,8), %xmm1         # xmm1 = mem[0],zero
	vfmadd132sd	-16(%r12,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	-8(%rcx,%rdx,8), %xmm2          # xmm2 = mem[0],zero
	vfmadd132sd	-8(%r12,%rdx,8), %xmm1, %xmm2 # xmm2 = (xmm2 * mem) + xmm1
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%r12,%rdx,8), %xmm2, %xmm0 # xmm0 = (xmm0 * mem) + xmm2
	addq	$8, %rdx
	cmpq	$2007, %rdx                     # imm = 0x7D7
	jne	.LBB0_8
# %bb.9:                                # %for.inc12.i
                                        #   in Loop: Header=BB0_7 Depth=1
	vmovsd	%xmm0, (%r14,%rax,8)
	incq	%rax
	addq	$16000, %rcx                    # imm = 0x3E80
	cmpq	$2000, %rax                     # imm = 0x7D0
	jne	.LBB0_7
# %bb.10:                               # %for.cond18.preheader.i.preheader
	xorl	%eax, %eax
	movq	%rbx, %rcx
	.p2align	4, 0x90
.LBB0_11:                               # %for.cond18.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	movl	$7, %edx
	movq	%rcx, %rsi
	.p2align	4, 0x90
.LBB0_12:                               # %for.body20.i
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	vfmadd132sd	-56(%r13,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	16000(%rsi), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	-48(%r13,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	32000(%rsi), %xmm1              # xmm1 = mem[0],zero
	vfmadd132sd	-40(%r13,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	48000(%rsi), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	-32(%r13,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	64000(%rsi), %xmm1              # xmm1 = mem[0],zero
	vfmadd132sd	-24(%r13,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	80000(%rsi), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	-16(%r13,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	96000(%rsi), %xmm1              # xmm1 = mem[0],zero
	vfmadd132sd	-8(%r13,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	112000(%rsi), %xmm0             # xmm0 = mem[0],zero
	vfmadd132sd	(%r13,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addq	$128000, %rsi                   # imm = 0x1F400
	addq	$8, %rdx
	cmpq	$2007, %rdx                     # imm = 0x7D7
	jne	.LBB0_12
# %bb.13:                               # %for.inc34.i
                                        #   in Loop: Header=BB0_11 Depth=1
	vmovsd	%xmm0, (%r15,%rax,8)
	incq	%rax
	addq	$8, %rcx
	cmpq	$2000, %rax                     # imm = 0x7D0
	jne	.LBB0_11
# %bb.14:                               # %kernel_mvt.exit
	cmpl	$43, %ebp
	jl	.LBB0_25
# %bb.15:                               # %land.lhs.true
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB0_16
.LBB0_25:                               # %if.end
	movq	%rbx, %rdi
	vzeroupper
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movq	%r13, %rdi
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
.LBB0_16:                               # %if.then
	.cfi_def_cfa_offset 80
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	stderr@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	leaq	.L.str.1(%rip), %rdi
	movl	$22, %esi
	movl	$1, %edx
	vzeroupper
	callq	fwrite@PLT
	movq	(%rbx), %rdi
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	xorl	%eax, %eax
	movq	$-16000, %rbx                   # imm = 0xC180
	xorl	%ebp, %ebp
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_19:                               # %if.end.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	vmovsd	16000(%r14,%rbx), %xmm0         # xmm0 = mem[0],zero
	leaq	.L.str.5(%rip), %rsi
	movb	$1, %al
	callq	fprintf@PLT
	decl	%ebp
	movl	8(%rsp), %eax                   # 4-byte Reload
	incl	%eax
	addq	$8, %rbx
	je	.LBB0_20
.LBB0_17:                               # %for.body.i43
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movzwl	%ax, %eax
	imull	$52429, %eax, %eax              # imm = 0xCCCD
	shrl	$18, %eax
	andl	$-4, %eax
	leal	(%rax,%rax,4), %eax
	addw	%bp, %ax
	jne	.LBB0_19
# %bb.18:                               # %if.then.i
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	jmp	.LBB0_19
.LBB0_20:                               # %for.end.i
	movq	stderr@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%rbx), %rdi
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	xorl	%eax, %eax
	movq	$-16000, %rbx                   # imm = 0xC180
	xorl	%ebp, %ebp
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_23:                               # %if.end14.i
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	vmovsd	16000(%r15,%rbx), %xmm0         # xmm0 = mem[0],zero
	leaq	.L.str.5(%rip), %rsi
	movb	$1, %al
	callq	fprintf@PLT
	decl	%ebp
	movl	8(%rsp), %eax                   # 4-byte Reload
	incl	%eax
	addq	$8, %rbx
	je	.LBB0_24
.LBB0_21:                               # %for.body9.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movzwl	%ax, %eax
	imull	$52429, %eax, %eax              # imm = 0xCCCD
	shrl	$18, %eax
	andl	$-4, %eax
	leal	(%rax,%rax,4), %eax
	addw	%bp, %ax
	jne	.LBB0_23
# %bb.22:                               # %if.then12.i
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	jmp	.LBB0_23
.LBB0_24:                               # %print_array.exit
	movq	stderr@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%rbx), %rcx
	leaq	.L.str.8(%rip), %rdi
	movl	$22, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB0_25
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"==BEGIN DUMP_ARRAYS==\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"begin dump: %s"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"x1"
	.size	.L.str.3, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%0.2lf "
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nend   dump: %s\n"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"x2"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"==END   DUMP_ARRAYS==\n"
	.size	.L.str.8, 23

	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 6c59f0e1b0fb56c909ad7c9aad4bde37dc006ae0)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
