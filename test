	.text
	.file	"test.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZStL8__ioinit, %rdi
	callq	_ZNSt8ios_base4InitC1Ev
	movabsq	$_ZNSt8ios_base4InitD1Ev, %rdi
	movabsq	$_ZStL8__ioinit, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$201792, %rsp           # imm = 0x31440
	movabsq	$.L.str, %rax
	leaq	-201764(%rbp), %rcx
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -201768(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movb	$0, %al
	callq	scanf
	movl	%eax, -201772(%rbp)     # 4-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-201764(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -201764(%rbp)
	cmpl	$0, %eax
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	leaq	-201760(%rbp), %rdi
	callq	_ZN11KuhnMunkres5BuildEv
	leaq	-201760(%rbp), %rdi
	movl	-201768(%rbp), %esi
	movl	%esi, -201776(%rbp)     # 4-byte Spill
	callq	_ZN11KuhnMunkres5SolveEv
	movabsq	$.L.str.1, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	subq	%rax, %rcx
	movl	-201776(%rbp), %esi     # 4-byte Reload
	movq	%rcx, %rdx
	movb	$0, %al
	callq	printf
	movl	-201768(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -201768(%rbp)
	movl	%eax, -201780(%rbp)     # 4-byte Spill
	jmp	.LBB1_1
.LBB1_3:
	xorl	%eax, %eax
	addq	$201792, %rsp           # imm = 0x31440
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11KuhnMunkres5BuildEv,"axG",@progbits,_ZN11KuhnMunkres5BuildEv,comdat
	.weak	_ZN11KuhnMunkres5BuildEv # -- Begin function _ZN11KuhnMunkres5BuildEv
	.p2align	4, 0x90
	.type	_ZN11KuhnMunkres5BuildEv,@function
_ZN11KuhnMunkres5BuildEv:               # @_ZN11KuhnMunkres5BuildEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	scanf
	movl	$1, -12(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jg	.LBB2_8
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	$1, -16(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jg	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$4, %rax
	movslq	-12(%rbp), %rcx
	imulq	$880, %rcx, %rcx        # imm = 0x370
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	scanf
	xorl	%edx, %edx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	$4, %rcx
	movslq	-12(%rbp), %rsi
	imulq	$880, %rsi, %rsi        # imm = 0x370
	addq	%rsi, %rcx
	movslq	-16(%rbp), %rsi
	subl	(%rcx,%rsi,4), %edx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	$4, %rcx
	movslq	-12(%rbp), %rsi
	imulq	$880, %rsi, %rsi        # imm = 0x370
	addq	%rsi, %rcx
	movslq	-16(%rbp), %rsi
	movl	%edx, (%rcx,%rsi,4)
	movl	%eax, -32(%rbp)         # 4-byte Spill
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_3
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_7
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_ZN11KuhnMunkres5BuildEv, .Lfunc_end2-_ZN11KuhnMunkres5BuildEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11KuhnMunkres5SolveEv,"axG",@progbits,_ZN11KuhnMunkres5SolveEv,comdat
	.weak	_ZN11KuhnMunkres5SolveEv # -- Begin function _ZN11KuhnMunkres5SolveEv
	.p2align	4, 0x90
	.type	_ZN11KuhnMunkres5SolveEv,@function
_ZN11KuhnMunkres5SolveEv:               # @_ZN11KuhnMunkres5SolveEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	$880, %ecx              # imm = 0x370
	movl	%ecx, %edx
	movl	$1760, %ecx             # imm = 0x6E0
	movl	%ecx, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, -16(%rbp)
	movq	%rdi, %r8
	addq	$194704, %r8            # imm = 0x2F890
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	memset
	movq	-32(%rbp), %rdx         # 8-byte Reload
	addq	$196464, %rdx           # imm = 0x2FF70
	movq	%rdx, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-32(%rbp), %rdx         # 8-byte Reload
	addq	$193824, %rdx           # imm = 0x2F520
	movq	%rdx, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movl	$1, -20(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jg	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	xorl	%esi, %esi
	movl	$220, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	$193604, %rcx           # imm = 0x2F444
	movq	%rcx, %rdi
	callq	memset
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZN11KuhnMunkres4findEi
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movl	$1, -24(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jg	.LBB3_8
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movslq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	194704(%rcx,%rax,8), %rax
	movslq	-24(%rbp), %rdx
	addq	196464(%rcx,%rdx,8), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_5
.LBB3_8:
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ZN11KuhnMunkres5SolveEv, .Lfunc_end3-_ZN11KuhnMunkres5SolveEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11KuhnMunkres4findEi,"axG",@progbits,_ZN11KuhnMunkres4findEi,comdat
	.weak	_ZN11KuhnMunkres4findEi # -- Begin function _ZN11KuhnMunkres4findEi
	.p2align	4, 0x90
	.type	_ZN11KuhnMunkres4findEi,@function
_ZN11KuhnMunkres4findEi:                # @_ZN11KuhnMunkres4findEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$63, %eax
	movl	$1760, %ecx             # imm = 0x6E0
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	%rdi, %r8
	addq	$198224, %r8            # imm = 0x30650
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%ecx, %esi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	memset
	movq	-48(%rbp), %rdx         # 8-byte Reload
	addq	$199984, %rdx           # imm = 0x30D30
	movq	%rdx, %rdi
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movl	-12(%rbp), %eax
	movslq	-20(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, 193824(%rdi,%rdx,4)
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #     Child Loop BB4_13 Depth 2
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	$0, 193824(%rcx,%rax,4)
	je	.LBB4_20
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movabsq	$4557430888798830399, %rax # imm = 0x3F3F3F3F3F3F3F3F
	movslq	-20(%rbp), %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	193824(%rdx,%rcx,4), %esi
	movl	%esi, -16(%rbp)
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	movb	$1, 193604(%rdx,%rax)
	movl	$1, -36(%rbp)
.LBB4_3:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jg	.LBB4_12
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=2
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testb	$1, 193604(%rcx,%rax)
	jne	.LBB4_10
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=2
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	199984(%rcx,%rax,8), %rax
	movslq	-16(%rbp), %rdx
	movq	194704(%rcx,%rdx,8), %rdx
	movslq	-36(%rbp), %rsi
	addq	196464(%rcx,%rsi,8), %rdx
	addq	$4, %rcx
	movslq	-16(%rbp), %rsi
	imulq	$880, %rsi, %rsi        # imm = 0x370
	addq	%rsi, %rcx
	movslq	-36(%rbp), %rsi
	movslq	(%rcx,%rsi,4), %rcx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	jle	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=2
	movslq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	194704(%rcx,%rax,8), %rax
	movslq	-36(%rbp), %rdx
	addq	196464(%rcx,%rdx,8), %rax
	addq	$4, %rcx
	movslq	-16(%rbp), %rdx
	imulq	$880, %rdx, %rdx        # imm = 0x370
	addq	%rdx, %rcx
	movslq	-36(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	subq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, 199984(%rdx,%rcx,8)
	movslq	-20(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rax, 198224(%rdx,%rcx,8)
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=2
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	199984(%rcx,%rax,8), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_3 Depth=2
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	199984(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, -24(%rbp)
.LBB4_9:                                #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_10
.LBB4_10:                               #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_11
.LBB4_11:                               #   in Loop: Header=BB4_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_3
.LBB4_12:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -40(%rbp)
.LBB4_13:                               #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	(%rcx), %eax
	jg	.LBB4_19
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=2
	movslq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testb	$1, 193604(%rcx,%rax)
	je	.LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_13 Depth=2
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movslq	193824(%rdx,%rcx,4), %rcx
	movq	194704(%rdx,%rcx,8), %rsi
	subq	%rax, %rsi
	movq	%rsi, 194704(%rdx,%rcx,8)
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	addq	196464(%rdx,%rcx,8), %rax
	movq	%rax, 196464(%rdx,%rcx,8)
	jmp	.LBB4_17
.LBB4_16:                               #   in Loop: Header=BB4_13 Depth=2
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	199984(%rdx,%rcx,8), %rsi
	subq	%rax, %rsi
	movq	%rsi, 199984(%rdx,%rcx,8)
.LBB4_17:                               #   in Loop: Header=BB4_13 Depth=2
	jmp	.LBB4_18
.LBB4_18:                               #   in Loop: Header=BB4_13 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_13
.LBB4_19:                               #   in Loop: Header=BB4_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_1
.LBB4_20:
	jmp	.LBB4_21
.LBB4_21:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB4_23
# %bb.22:                               #   in Loop: Header=BB4_21 Depth=1
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	198224(%rcx,%rax,8), %rax
	movl	193824(%rcx,%rax,4), %edx
	movslq	-20(%rbp), %rax
	movl	%edx, 193824(%rcx,%rax,4)
	movslq	-20(%rbp), %rax
	movq	198224(%rcx,%rax,8), %rax
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	jmp	.LBB4_21
.LBB4_23:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZN11KuhnMunkres4findEi, .Lfunc_end4-_ZN11KuhnMunkres4findEi
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_test.cpp
	.type	_GLOBAL__sub_I_test.cpp,@function
_GLOBAL__sub_I_test.cpp:                # @_GLOBAL__sub_I_test.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_GLOBAL__sub_I_test.cpp, .Lfunc_end5-_GLOBAL__sub_I_test.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Case #%d: %lld\n"
	.size	.L.str.1, 16

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_test.cpp

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
