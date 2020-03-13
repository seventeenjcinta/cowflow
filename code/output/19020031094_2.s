
input/19020031094_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000660 <_init>:
 660:	48 83 ec 08          	sub    $0x8,%rsp
 664:	48 8b 05 7d 19 20 00 	mov    0x20197d(%rip),%rax        # 201fe8 <__gmon_start__>
 66b:	48 85 c0             	test   %rax,%rax
 66e:	74 02                	je     672 <_init+0x12>
 670:	ff d0                	callq  *%rax
 672:	48 83 c4 08          	add    $0x8,%rsp
 676:	c3                   	retq   

Disassembly of section .plt:

0000000000000680 <.plt>:
 680:	ff 35 1a 19 20 00    	pushq  0x20191a(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 686:	ff 25 1c 19 20 00    	jmpq   *0x20191c(%rip)        # 201fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 68c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000690 <puts@plt>:
 690:	ff 25 1a 19 20 00    	jmpq   *0x20191a(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 696:	68 00 00 00 00       	pushq  $0x0
 69b:	e9 e0 ff ff ff       	jmpq   680 <.plt>

00000000000006a0 <__stack_chk_fail@plt>:
 6a0:	ff 25 12 19 20 00    	jmpq   *0x201912(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 6a6:	68 01 00 00 00       	pushq  $0x1
 6ab:	e9 d0 ff ff ff       	jmpq   680 <.plt>

00000000000006b0 <malloc@plt>:
 6b0:	ff 25 0a 19 20 00    	jmpq   *0x20190a(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 6b6:	68 02 00 00 00       	pushq  $0x2
 6bb:	e9 c0 ff ff ff       	jmpq   680 <.plt>

00000000000006c0 <__printf_chk@plt>:
 6c0:	ff 25 02 19 20 00    	jmpq   *0x201902(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 6c6:	68 03 00 00 00       	pushq  $0x3
 6cb:	e9 b0 ff ff ff       	jmpq   680 <.plt>

00000000000006d0 <__isoc99_scanf@plt>:
 6d0:	ff 25 fa 18 20 00    	jmpq   *0x2018fa(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 6d6:	68 04 00 00 00       	pushq  $0x4
 6db:	e9 a0 ff ff ff       	jmpq   680 <.plt>

Disassembly of section .plt.got:

00000000000006e0 <__cxa_finalize@plt>:
 6e0:	ff 25 12 19 20 00    	jmpq   *0x201912(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 6e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006f0 <main>:
 6f0:	41 54                	push   %r12
 6f2:	55                   	push   %rbp
 6f3:	48 8d 3d 13 06 00 00 	lea    0x613(%rip),%rdi        # d0d <_IO_stdin_used+0x6d>
 6fa:	53                   	push   %rbx
 6fb:	48 8d 2d 1e 06 00 00 	lea    0x61e(%rip),%rbp        # d20 <_IO_stdin_used+0x80>
 702:	48 83 ec 10          	sub    $0x10,%rsp
 706:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 70d:	00 00 
 70f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 714:	31 c0                	xor    %eax,%eax
 716:	e8 75 ff ff ff       	callq  690 <puts@plt>
 71b:	31 c0                	xor    %eax,%eax
 71d:	4c 8d 64 24 04       	lea    0x4(%rsp),%r12
 722:	e8 b9 01 00 00       	callq  8e0 <creat>
 727:	48 89 c7             	mov    %rax,%rdi
 72a:	48 89 c3             	mov    %rax,%rbx
 72d:	e8 6e 02 00 00       	callq  9a0 <print>
 732:	eb 24                	jmp    758 <main+0x68>
 734:	0f 1f 40 00          	nopl   0x0(%rax)
 738:	83 fa 02             	cmp    $0x2,%edx
 73b:	75 17                	jne    754 <main+0x64>
 73d:	48 89 df             	mov    %rbx,%rdi
 740:	e8 2b 04 00 00       	callq  b70 <del>
 745:	48 63 d8             	movslq %eax,%rbx
 748:	48 89 df             	mov    %rbx,%rdi
 74b:	e8 50 02 00 00       	callq  9a0 <print>
 750:	8b 54 24 04          	mov    0x4(%rsp),%edx
 754:	85 d2                	test   %edx,%edx
 756:	74 50                	je     7a8 <main+0xb8>
 758:	48 89 ef             	mov    %rbp,%rdi
 75b:	e8 30 ff ff ff       	callq  690 <puts@plt>
 760:	48 8d 3d a3 05 00 00 	lea    0x5a3(%rip),%rdi        # d0a <_IO_stdin_used+0x6a>
 767:	31 c0                	xor    %eax,%eax
 769:	4c 89 e6             	mov    %r12,%rsi
 76c:	e8 5f ff ff ff       	callq  6d0 <__isoc99_scanf@plt>
 771:	8b 54 24 04          	mov    0x4(%rsp),%edx
 775:	83 fa 01             	cmp    $0x1,%edx
 778:	75 be                	jne    738 <main+0x48>
 77a:	48 8d 35 b6 05 00 00 	lea    0x5b6(%rip),%rsi        # d37 <_IO_stdin_used+0x97>
 781:	bf 01 00 00 00       	mov    $0x1,%edi
 786:	31 c0                	xor    %eax,%eax
 788:	e8 33 ff ff ff       	callq  6c0 <__printf_chk@plt>
 78d:	48 89 df             	mov    %rbx,%rdi
 790:	e8 9b 03 00 00       	callq  b30 <insert>
 795:	48 63 d8             	movslq %eax,%rbx
 798:	48 89 df             	mov    %rbx,%rdi
 79b:	e8 00 02 00 00       	callq  9a0 <print>
 7a0:	8b 54 24 04          	mov    0x4(%rsp),%edx
 7a4:	85 d2                	test   %edx,%edx
 7a6:	75 b0                	jne    758 <main+0x68>
 7a8:	31 c0                	xor    %eax,%eax
 7aa:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 7af:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 7b6:	00 00 
 7b8:	75 09                	jne    7c3 <main+0xd3>
 7ba:	48 83 c4 10          	add    $0x10,%rsp
 7be:	5b                   	pop    %rbx
 7bf:	5d                   	pop    %rbp
 7c0:	41 5c                	pop    %r12
 7c2:	c3                   	retq   
 7c3:	e8 d8 fe ff ff       	callq  6a0 <__stack_chk_fail@plt>
 7c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 7cf:	00 

00000000000007d0 <_start>:
 7d0:	31 ed                	xor    %ebp,%ebp
 7d2:	49 89 d1             	mov    %rdx,%r9
 7d5:	5e                   	pop    %rsi
 7d6:	48 89 e2             	mov    %rsp,%rdx
 7d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 7dd:	50                   	push   %rax
 7de:	54                   	push   %rsp
 7df:	4c 8d 05 aa 04 00 00 	lea    0x4aa(%rip),%r8        # c90 <__libc_csu_fini>
 7e6:	48 8d 0d 33 04 00 00 	lea    0x433(%rip),%rcx        # c20 <__libc_csu_init>
 7ed:	48 8d 3d fc fe ff ff 	lea    -0x104(%rip),%rdi        # 6f0 <main>
 7f4:	ff 15 e6 17 20 00    	callq  *0x2017e6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 7fa:	f4                   	hlt    
 7fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000800 <deregister_tm_clones>:
 800:	48 8d 3d 09 18 20 00 	lea    0x201809(%rip),%rdi        # 202010 <__TMC_END__>
 807:	55                   	push   %rbp
 808:	48 8d 05 01 18 20 00 	lea    0x201801(%rip),%rax        # 202010 <__TMC_END__>
 80f:	48 39 f8             	cmp    %rdi,%rax
 812:	48 89 e5             	mov    %rsp,%rbp
 815:	74 19                	je     830 <deregister_tm_clones+0x30>
 817:	48 8b 05 ba 17 20 00 	mov    0x2017ba(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 81e:	48 85 c0             	test   %rax,%rax
 821:	74 0d                	je     830 <deregister_tm_clones+0x30>
 823:	5d                   	pop    %rbp
 824:	ff e0                	jmpq   *%rax
 826:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 82d:	00 00 00 
 830:	5d                   	pop    %rbp
 831:	c3                   	retq   
 832:	0f 1f 40 00          	nopl   0x0(%rax)
 836:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 83d:	00 00 00 

0000000000000840 <register_tm_clones>:
 840:	48 8d 3d c9 17 20 00 	lea    0x2017c9(%rip),%rdi        # 202010 <__TMC_END__>
 847:	48 8d 35 c2 17 20 00 	lea    0x2017c2(%rip),%rsi        # 202010 <__TMC_END__>
 84e:	55                   	push   %rbp
 84f:	48 29 fe             	sub    %rdi,%rsi
 852:	48 89 e5             	mov    %rsp,%rbp
 855:	48 c1 fe 03          	sar    $0x3,%rsi
 859:	48 89 f0             	mov    %rsi,%rax
 85c:	48 c1 e8 3f          	shr    $0x3f,%rax
 860:	48 01 c6             	add    %rax,%rsi
 863:	48 d1 fe             	sar    %rsi
 866:	74 18                	je     880 <register_tm_clones+0x40>
 868:	48 8b 05 81 17 20 00 	mov    0x201781(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 86f:	48 85 c0             	test   %rax,%rax
 872:	74 0c                	je     880 <register_tm_clones+0x40>
 874:	5d                   	pop    %rbp
 875:	ff e0                	jmpq   *%rax
 877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 87e:	00 00 
 880:	5d                   	pop    %rbp
 881:	c3                   	retq   
 882:	0f 1f 40 00          	nopl   0x0(%rax)
 886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 88d:	00 00 00 

0000000000000890 <__do_global_dtors_aux>:
 890:	80 3d 79 17 20 00 00 	cmpb   $0x0,0x201779(%rip)        # 202010 <__TMC_END__>
 897:	75 2f                	jne    8c8 <__do_global_dtors_aux+0x38>
 899:	48 83 3d 57 17 20 00 	cmpq   $0x0,0x201757(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 8a0:	00 
 8a1:	55                   	push   %rbp
 8a2:	48 89 e5             	mov    %rsp,%rbp
 8a5:	74 0c                	je     8b3 <__do_global_dtors_aux+0x23>
 8a7:	48 8b 3d 5a 17 20 00 	mov    0x20175a(%rip),%rdi        # 202008 <__dso_handle>
 8ae:	e8 2d fe ff ff       	callq  6e0 <__cxa_finalize@plt>
 8b3:	e8 48 ff ff ff       	callq  800 <deregister_tm_clones>
 8b8:	c6 05 51 17 20 00 01 	movb   $0x1,0x201751(%rip)        # 202010 <__TMC_END__>
 8bf:	5d                   	pop    %rbp
 8c0:	c3                   	retq   
 8c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 8c8:	f3 c3                	repz retq 
 8ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008d0 <frame_dummy>:
 8d0:	55                   	push   %rbp
 8d1:	48 89 e5             	mov    %rsp,%rbp
 8d4:	5d                   	pop    %rbp
 8d5:	e9 66 ff ff ff       	jmpq   840 <register_tm_clones>
 8da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008e0 <creat>:
 8e0:	41 56                	push   %r14
 8e2:	48 8d 3d bf 03 00 00 	lea    0x3bf(%rip),%rdi        # ca8 <_IO_stdin_used+0x8>
 8e9:	41 55                	push   %r13
 8eb:	41 54                	push   %r12
 8ed:	55                   	push   %rbp
 8ee:	45 31 f6             	xor    %r14d,%r14d
 8f1:	53                   	push   %rbx
 8f2:	4c 8d 2d d7 03 00 00 	lea    0x3d7(%rip),%r13        # cd0 <_IO_stdin_used+0x30>
 8f9:	e8 92 fd ff ff       	callq  690 <puts@plt>
 8fe:	bf 18 00 00 00       	mov    $0x18,%edi
 903:	e8 a8 fd ff ff       	callq  6b0 <malloc@plt>
 908:	48 8d 3d c1 03 00 00 	lea    0x3c1(%rip),%rdi        # cd0 <_IO_stdin_used+0x30>
 90f:	48 8d 50 08          	lea    0x8(%rax),%rdx
 913:	49 89 c4             	mov    %rax,%r12
 916:	48 89 c6             	mov    %rax,%rsi
 919:	31 c0                	xor    %eax,%eax
 91b:	4c 89 e5             	mov    %r12,%rbp
 91e:	e8 ad fd ff ff       	callq  6d0 <__isoc99_scanf@plt>
 923:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 928:	75 35                	jne    95f <creat+0x7f>
 92a:	eb 54                	jmp    980 <creat+0xa0>
 92c:	0f 1f 40 00          	nopl   0x0(%rax)
 930:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 935:	bf 18 00 00 00       	mov    $0x18,%edi
 93a:	49 89 ec             	mov    %rbp,%r12
 93d:	e8 6e fd ff ff       	callq  6b0 <malloc@plt>
 942:	48 8d 50 08          	lea    0x8(%rax),%rdx
 946:	48 89 c3             	mov    %rax,%rbx
 949:	48 89 c6             	mov    %rax,%rsi
 94c:	4c 89 ef             	mov    %r13,%rdi
 94f:	31 c0                	xor    %eax,%eax
 951:	e8 7a fd ff ff       	callq  6d0 <__isoc99_scanf@plt>
 956:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 95a:	74 24                	je     980 <creat+0xa0>
 95c:	48 89 dd             	mov    %rbx,%rbp
 95f:	8b 05 af 16 20 00    	mov    0x2016af(%rip),%eax        # 202014 <n>
 965:	83 c0 01             	add    $0x1,%eax
 968:	83 f8 01             	cmp    $0x1,%eax
 96b:	89 05 a3 16 20 00    	mov    %eax,0x2016a3(%rip)        # 202014 <n>
 971:	75 bd                	jne    930 <creat+0x50>
 973:	49 89 ee             	mov    %rbp,%r14
 976:	eb bd                	jmp    935 <creat+0x55>
 978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 97f:	00 
 980:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 987:	00 
 988:	4c 89 f0             	mov    %r14,%rax
 98b:	5b                   	pop    %rbx
 98c:	5d                   	pop    %rbp
 98d:	41 5c                	pop    %r12
 98f:	41 5d                	pop    %r13
 991:	41 5e                	pop    %r14
 993:	c3                   	retq   
 994:	66 90                	xchg   %ax,%ax
 996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99d:	00 00 00 

00000000000009a0 <print>:
 9a0:	41 57                	push   %r15
 9a2:	41 56                	push   %r14
 9a4:	41 55                	push   %r13
 9a6:	41 54                	push   %r12
 9a8:	49 89 fc             	mov    %rdi,%r12
 9ab:	55                   	push   %rbp
 9ac:	53                   	push   %rbx
 9ad:	bf 18 00 00 00       	mov    $0x18,%edi
 9b2:	48 83 ec 08          	sub    $0x8,%rsp
 9b6:	8b 1d 58 16 20 00    	mov    0x201658(%rip),%ebx        # 202014 <n>
 9bc:	e8 ef fc ff ff       	callq  6b0 <malloc@plt>
 9c1:	85 db                	test   %ebx,%ebx
 9c3:	0f 8e 45 01 00 00    	jle    b0e <print+0x16e>
 9c9:	4c 8d 3d 06 03 00 00 	lea    0x306(%rip),%r15        # cd6 <_IO_stdin_used+0x36>
 9d0:	48 89 c5             	mov    %rax,%rbp
 9d3:	49 89 c5             	mov    %rax,%r13
 9d6:	45 31 f6             	xor    %r14d,%r14d
 9d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9e0:	49 8b 14 24          	mov    (%r12),%rdx
 9e4:	f3 41 0f 10 44 24 08 	movss  0x8(%r12),%xmm0
 9eb:	f3 41 0f 11 45 08    	movss  %xmm0,0x8(%r13)
 9f1:	31 c0                	xor    %eax,%eax
 9f3:	4c 89 fe             	mov    %r15,%rsi
 9f6:	bf 01 00 00 00       	mov    $0x1,%edi
 9fb:	41 83 c6 01          	add    $0x1,%r14d
 9ff:	49 89 55 00          	mov    %rdx,0x0(%r13)
 a03:	e8 b8 fc ff ff       	callq  6c0 <__printf_chk@plt>
 a08:	44 39 35 05 16 20 00 	cmp    %r14d,0x201605(%rip)        # 202014 <n>
 a0f:	4d 8b 6d 10          	mov    0x10(%r13),%r13
 a13:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
 a18:	7f c6                	jg     9e0 <print+0x40>
 a1a:	48 8d 3d c6 02 00 00 	lea    0x2c6(%rip),%rdi        # ce7 <_IO_stdin_used+0x47>
 a21:	49 89 ec             	mov    %rbp,%r12
 a24:	e8 67 fc ff ff       	callq  690 <puts@plt>
 a29:	44 8b 05 e4 15 20 00 	mov    0x2015e4(%rip),%r8d        # 202014 <n>
 a30:	48 89 e8             	mov    %rbp,%rax
 a33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a38:	31 c9                	xor    %ecx,%ecx
 a3a:	45 85 c0             	test   %r8d,%r8d
 a3d:	49 8b 14 24          	mov    (%r12),%rdx
 a41:	7f 10                	jg     a53 <print+0xb3>
 a43:	eb 2a                	jmp    a6f <print+0xcf>
 a45:	0f 1f 00             	nopl   (%rax)
 a48:	83 c1 01             	add    $0x1,%ecx
 a4b:	48 89 f0             	mov    %rsi,%rax
 a4e:	44 39 c1             	cmp    %r8d,%ecx
 a51:	74 1c                	je     a6f <print+0xcf>
 a53:	48 8b 38             	mov    (%rax),%rdi
 a56:	48 8b 70 10          	mov    0x10(%rax),%rsi
 a5a:	48 85 ff             	test   %rdi,%rdi
 a5d:	74 0b                	je     a6a <print+0xca>
 a5f:	48 39 d7             	cmp    %rdx,%rdi
 a62:	7d 06                	jge    a6a <print+0xca>
 a64:	48 89 fa             	mov    %rdi,%rdx
 a67:	49 89 c4             	mov    %rax,%r12
 a6a:	48 85 f6             	test   %rsi,%rsi
 a6d:	75 d9                	jne    a48 <print+0xa8>
 a6f:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a73:	48 8d 35 62 02 00 00 	lea    0x262(%rip),%rsi        # cdc <_IO_stdin_used+0x3c>
 a7a:	bf 01 00 00 00       	mov    $0x1,%edi
 a7f:	b8 01 00 00 00       	mov    $0x1,%eax
 a84:	f3 41 0f 5a 44 24 08 	cvtss2sd 0x8(%r12),%xmm0
 a8b:	e8 30 fc ff ff       	callq  6c0 <__printf_chk@plt>
 a90:	44 8b 05 7d 15 20 00 	mov    0x20157d(%rip),%r8d        # 202014 <n>
 a97:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
 a9e:	00 
 a9f:	48 89 e8             	mov    %rbp,%rax
 aa2:	45 85 c0             	test   %r8d,%r8d
 aa5:	7e 23                	jle    aca <print+0x12a>
 aa7:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
 aac:	75 52                	jne    b00 <print+0x160>
 aae:	31 d2                	xor    %edx,%edx
 ab0:	eb 0c                	jmp    abe <print+0x11e>
 ab2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ab8:	48 83 38 00          	cmpq   $0x0,(%rax)
 abc:	75 2a                	jne    ae8 <print+0x148>
 abe:	83 c2 01             	add    $0x1,%edx
 ac1:	48 8b 40 10          	mov    0x10(%rax),%rax
 ac5:	44 39 c2             	cmp    %r8d,%edx
 ac8:	75 ee                	jne    ab8 <print+0x118>
 aca:	83 eb 01             	sub    $0x1,%ebx
 acd:	0f 85 65 ff ff ff    	jne    a38 <print+0x98>
 ad3:	48 83 c4 08          	add    $0x8,%rsp
 ad7:	5b                   	pop    %rbx
 ad8:	5d                   	pop    %rbp
 ad9:	41 5c                	pop    %r12
 adb:	41 5d                	pop    %r13
 add:	41 5e                	pop    %r14
 adf:	41 5f                	pop    %r15
 ae1:	c3                   	retq   
 ae2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ae8:	83 eb 01             	sub    $0x1,%ebx
 aeb:	49 89 c4             	mov    %rax,%r12
 aee:	0f 85 44 ff ff ff    	jne    a38 <print+0x98>
 af4:	eb dd                	jmp    ad3 <print+0x133>
 af6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 afd:	00 00 00 
 b00:	83 eb 01             	sub    $0x1,%ebx
 b03:	49 89 ec             	mov    %rbp,%r12
 b06:	0f 85 2c ff ff ff    	jne    a38 <print+0x98>
 b0c:	eb c5                	jmp    ad3 <print+0x133>
 b0e:	48 83 c4 08          	add    $0x8,%rsp
 b12:	48 8d 3d ce 01 00 00 	lea    0x1ce(%rip),%rdi        # ce7 <_IO_stdin_used+0x47>
 b19:	5b                   	pop    %rbx
 b1a:	5d                   	pop    %rbp
 b1b:	41 5c                	pop    %r12
 b1d:	41 5d                	pop    %r13
 b1f:	41 5e                	pop    %r14
 b21:	41 5f                	pop    %r15
 b23:	e9 68 fb ff ff       	jmpq   690 <puts@plt>
 b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b2f:	00 

0000000000000b30 <insert>:
 b30:	55                   	push   %rbp
 b31:	53                   	push   %rbx
 b32:	48 89 fd             	mov    %rdi,%rbp
 b35:	bf 18 00 00 00       	mov    $0x18,%edi
 b3a:	48 83 ec 08          	sub    $0x8,%rsp
 b3e:	e8 6d fb ff ff       	callq  6b0 <malloc@plt>
 b43:	48 8d 3d a5 01 00 00 	lea    0x1a5(%rip),%rdi        # cef <_IO_stdin_used+0x4f>
 b4a:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b4e:	48 89 c3             	mov    %rax,%rbx
 b51:	48 89 c6             	mov    %rax,%rsi
 b54:	31 c0                	xor    %eax,%eax
 b56:	e8 75 fb ff ff       	callq  6d0 <__isoc99_scanf@plt>
 b5b:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
 b5f:	83 05 ae 14 20 00 01 	addl   $0x1,0x2014ae(%rip)        # 202014 <n>
 b66:	48 83 c4 08          	add    $0x8,%rsp
 b6a:	89 d8                	mov    %ebx,%eax
 b6c:	5b                   	pop    %rbx
 b6d:	5d                   	pop    %rbp
 b6e:	c3                   	retq   
 b6f:	90                   	nop

0000000000000b70 <del>:
 b70:	53                   	push   %rbx
 b71:	48 8d 35 7e 01 00 00 	lea    0x17e(%rip),%rsi        # cf6 <_IO_stdin_used+0x56>
 b78:	48 89 fb             	mov    %rdi,%rbx
 b7b:	bf 01 00 00 00       	mov    $0x1,%edi
 b80:	48 83 ec 10          	sub    $0x10,%rsp
 b84:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 b8b:	00 00 
 b8d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 b92:	31 c0                	xor    %eax,%eax
 b94:	e8 27 fb ff ff       	callq  6c0 <__printf_chk@plt>
 b99:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
 b9e:	48 8d 3d 65 01 00 00 	lea    0x165(%rip),%rdi        # d0a <_IO_stdin_used+0x6a>
 ba5:	31 c0                	xor    %eax,%eax
 ba7:	e8 24 fb ff ff       	callq  6d0 <__isoc99_scanf@plt>
 bac:	8b 74 24 04          	mov    0x4(%rsp),%esi
 bb0:	85 f6                	test   %esi,%esi
 bb2:	74 3b                	je     bef <del+0x7f>
 bb4:	83 fe 01             	cmp    $0x1,%esi
 bb7:	48 8b 43 10          	mov    0x10(%rbx),%rax
 bbb:	74 4b                	je     c08 <del+0x98>
 bbd:	83 fe 02             	cmp    $0x2,%esi
 bc0:	48 8b 78 10          	mov    0x10(%rax),%rdi
 bc4:	7e 4a                	jle    c10 <del+0xa0>
 bc6:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
 bca:	ba 02 00 00 00       	mov    $0x2,%edx
 bcf:	eb 11                	jmp    be2 <del+0x72>
 bd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 bd8:	48 89 f8             	mov    %rdi,%rax
 bdb:	48 89 cf             	mov    %rcx,%rdi
 bde:	48 8b 49 10          	mov    0x10(%rcx),%rcx
 be2:	83 c2 01             	add    $0x1,%edx
 be5:	39 d6                	cmp    %edx,%esi
 be7:	75 ef                	jne    bd8 <del+0x68>
 be9:	48 89 48 10          	mov    %rcx,0x10(%rax)
 bed:	89 d8                	mov    %ebx,%eax
 bef:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 bf4:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
 bfb:	00 00 
 bfd:	75 19                	jne    c18 <del+0xa8>
 bff:	48 83 c4 10          	add    $0x10,%rsp
 c03:	5b                   	pop    %rbx
 c04:	c3                   	retq   
 c05:	0f 1f 00             	nopl   (%rax)
 c08:	48 89 c3             	mov    %rax,%rbx
 c0b:	89 d8                	mov    %ebx,%eax
 c0d:	eb e0                	jmp    bef <del+0x7f>
 c0f:	90                   	nop
 c10:	48 89 f9             	mov    %rdi,%rcx
 c13:	48 89 d8             	mov    %rbx,%rax
 c16:	eb d1                	jmp    be9 <del+0x79>
 c18:	e8 83 fa ff ff       	callq  6a0 <__stack_chk_fail@plt>
 c1d:	0f 1f 00             	nopl   (%rax)

0000000000000c20 <__libc_csu_init>:
 c20:	41 57                	push   %r15
 c22:	41 56                	push   %r14
 c24:	49 89 d7             	mov    %rdx,%r15
 c27:	41 55                	push   %r13
 c29:	41 54                	push   %r12
 c2b:	4c 8d 25 66 11 20 00 	lea    0x201166(%rip),%r12        # 201d98 <__frame_dummy_init_array_entry>
 c32:	55                   	push   %rbp
 c33:	48 8d 2d 66 11 20 00 	lea    0x201166(%rip),%rbp        # 201da0 <__init_array_end>
 c3a:	53                   	push   %rbx
 c3b:	41 89 fd             	mov    %edi,%r13d
 c3e:	49 89 f6             	mov    %rsi,%r14
 c41:	4c 29 e5             	sub    %r12,%rbp
 c44:	48 83 ec 08          	sub    $0x8,%rsp
 c48:	48 c1 fd 03          	sar    $0x3,%rbp
 c4c:	e8 0f fa ff ff       	callq  660 <_init>
 c51:	48 85 ed             	test   %rbp,%rbp
 c54:	74 20                	je     c76 <__libc_csu_init+0x56>
 c56:	31 db                	xor    %ebx,%ebx
 c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c5f:	00 
 c60:	4c 89 fa             	mov    %r15,%rdx
 c63:	4c 89 f6             	mov    %r14,%rsi
 c66:	44 89 ef             	mov    %r13d,%edi
 c69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c6d:	48 83 c3 01          	add    $0x1,%rbx
 c71:	48 39 dd             	cmp    %rbx,%rbp
 c74:	75 ea                	jne    c60 <__libc_csu_init+0x40>
 c76:	48 83 c4 08          	add    $0x8,%rsp
 c7a:	5b                   	pop    %rbx
 c7b:	5d                   	pop    %rbp
 c7c:	41 5c                	pop    %r12
 c7e:	41 5d                	pop    %r13
 c80:	41 5e                	pop    %r14
 c82:	41 5f                	pop    %r15
 c84:	c3                   	retq   
 c85:	90                   	nop
 c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c8d:	00 00 00 

0000000000000c90 <__libc_csu_fini>:
 c90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c94 <_fini>:
 c94:	48 83 ec 08          	sub    $0x8,%rsp
 c98:	48 83 c4 08          	add    $0x8,%rsp
 c9c:	c3                   	retq   
