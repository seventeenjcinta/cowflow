
input/19020031103_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006b0 <_init>:
 6b0:	48 83 ec 08          	sub    $0x8,%rsp
 6b4:	48 8b 05 2d 19 20 00 	mov    0x20192d(%rip),%rax        # 201fe8 <__gmon_start__>
 6bb:	48 85 c0             	test   %rax,%rax
 6be:	74 02                	je     6c2 <_init+0x12>
 6c0:	ff d0                	callq  *%rax
 6c2:	48 83 c4 08          	add    $0x8,%rsp
 6c6:	c3                   	retq   

Disassembly of section .plt:

00000000000006d0 <.plt>:
 6d0:	ff 35 c2 18 20 00    	pushq  0x2018c2(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 6d6:	ff 25 c4 18 20 00    	jmpq   *0x2018c4(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 6dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006e0 <puts@plt>:
 6e0:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 6e6:	68 00 00 00 00       	pushq  $0x0
 6eb:	e9 e0 ff ff ff       	jmpq   6d0 <.plt>

00000000000006f0 <__stack_chk_fail@plt>:
 6f0:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 6f6:	68 01 00 00 00       	pushq  $0x1
 6fb:	e9 d0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000700 <malloc@plt>:
 700:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 706:	68 02 00 00 00       	pushq  $0x2
 70b:	e9 c0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000710 <_IO_getc@plt>:
 710:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
 716:	68 03 00 00 00       	pushq  $0x3
 71b:	e9 b0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000720 <__printf_chk@plt>:
 720:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 726:	68 04 00 00 00       	pushq  $0x4
 72b:	e9 a0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000730 <__isoc99_scanf@plt>:
 730:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 736:	68 05 00 00 00       	pushq  $0x5
 73b:	e9 90 ff ff ff       	jmpq   6d0 <.plt>

Disassembly of section .plt.got:

0000000000000740 <__cxa_finalize@plt>:
 740:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 746:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000750 <main>:
 750:	41 55                	push   %r13
 752:	41 54                	push   %r12
 754:	48 8d 3d e2 04 00 00 	lea    0x4e2(%rip),%rdi        # c3d <_IO_stdin_used+0x4d>
 75b:	55                   	push   %rbp
 75c:	53                   	push   %rbx
 75d:	4c 8d 25 f0 04 00 00 	lea    0x4f0(%rip),%r12        # c54 <_IO_stdin_used+0x64>
 764:	48 83 ec 28          	sub    $0x28,%rsp
 768:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 76f:	00 00 
 771:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 776:	31 c0                	xor    %eax,%eax
 778:	e8 63 ff ff ff       	callq  6e0 <puts@plt>
 77d:	48 8d 3d 44 05 00 00 	lea    0x544(%rip),%rdi        # cc8 <_IO_stdin_used+0xd8>
 784:	4c 8d 6c 24 0c       	lea    0xc(%rsp),%r13
 789:	e8 52 ff ff ff       	callq  6e0 <puts@plt>
 78e:	31 ff                	xor    %edi,%edi
 790:	e8 4b 03 00 00       	callq  ae0 <create>
 795:	48 89 c7             	mov    %rax,%rdi
 798:	48 89 c5             	mov    %rax,%rbp
 79b:	e8 30 02 00 00       	callq  9d0 <print>
 7a0:	4c 89 e7             	mov    %r12,%rdi
 7a3:	e8 38 ff ff ff       	callq  6e0 <puts@plt>
 7a8:	48 8d 35 c3 04 00 00 	lea    0x4c3(%rip),%rsi        # c72 <_IO_stdin_used+0x82>
 7af:	bf 01 00 00 00       	mov    $0x1,%edi
 7b4:	31 c0                	xor    %eax,%eax
 7b6:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 7bd:	ff 
 7be:	e8 5d ff ff ff       	callq  720 <__printf_chk@plt>
 7c3:	48 8d 3d b8 04 00 00 	lea    0x4b8(%rip),%rdi        # c82 <_IO_stdin_used+0x92>
 7ca:	4c 89 ee             	mov    %r13,%rsi
 7cd:	31 c0                	xor    %eax,%eax
 7cf:	e8 5c ff ff ff       	callq  730 <__isoc99_scanf@plt>
 7d4:	48 8b 3d 35 18 20 00 	mov    0x201835(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 7db:	e8 30 ff ff ff       	callq  710 <_IO_getc@plt>
 7e0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7e4:	83 f8 01             	cmp    $0x1,%eax
 7e7:	74 3f                	je     828 <main+0xd8>
 7e9:	83 f8 02             	cmp    $0x2,%eax
 7ec:	0f 85 9b 00 00 00    	jne    88d <main+0x13d>
 7f2:	48 8d 35 b8 04 00 00 	lea    0x4b8(%rip),%rsi        # cb1 <_IO_stdin_used+0xc1>
 7f9:	bf 01 00 00 00       	mov    $0x1,%edi
 7fe:	31 c0                	xor    %eax,%eax
 800:	e8 1b ff ff ff       	callq  720 <__printf_chk@plt>
 805:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
 80a:	48 8d 3d b3 04 00 00 	lea    0x4b3(%rip),%rdi        # cc4 <_IO_stdin_used+0xd4>
 811:	31 c0                	xor    %eax,%eax
 813:	e8 18 ff ff ff       	callq  730 <__isoc99_scanf@plt>
 818:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 81d:	48 89 ef             	mov    %rbp,%rdi
 820:	e8 3b 03 00 00       	callq  b60 <del>
 825:	0f 1f 00             	nopl   (%rax)
 828:	48 8d 35 56 04 00 00 	lea    0x456(%rip),%rsi        # c85 <_IO_stdin_used+0x95>
 82f:	bf 01 00 00 00       	mov    $0x1,%edi
 834:	31 c0                	xor    %eax,%eax
 836:	e8 e5 fe ff ff       	callq  720 <__printf_chk@plt>
 83b:	bf 18 00 00 00       	mov    $0x18,%edi
 840:	e8 bb fe ff ff       	callq  700 <malloc@plt>
 845:	48 8d 3d ea 03 00 00 	lea    0x3ea(%rip),%rdi        # c36 <_IO_stdin_used+0x46>
 84c:	48 8d 50 08          	lea    0x8(%rax),%rdx
 850:	48 89 c3             	mov    %rax,%rbx
 853:	48 89 c6             	mov    %rax,%rsi
 856:	31 c0                	xor    %eax,%eax
 858:	e8 d3 fe ff ff       	callq  730 <__isoc99_scanf@plt>
 85d:	48 89 ef             	mov    %rbp,%rdi
 860:	48 89 de             	mov    %rbx,%rsi
 863:	e8 e8 01 00 00       	callq  a50 <insert>
 868:	48 8b 13             	mov    (%rbx),%rdx
 86b:	48 8d 35 30 04 00 00 	lea    0x430(%rip),%rsi        # ca2 <_IO_stdin_used+0xb2>
 872:	48 89 c5             	mov    %rax,%rbp
 875:	bf 01 00 00 00       	mov    $0x1,%edi
 87a:	31 c0                	xor    %eax,%eax
 87c:	e8 9f fe ff ff       	callq  720 <__printf_chk@plt>
 881:	48 89 ef             	mov    %rbp,%rdi
 884:	e8 47 01 00 00       	callq  9d0 <print>
 889:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 88d:	85 c0                	test   %eax,%eax
 88f:	0f 85 0b ff ff ff    	jne    7a0 <main+0x50>
 895:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 89a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 8a1:	00 00 
 8a3:	75 0b                	jne    8b0 <main+0x160>
 8a5:	48 83 c4 28          	add    $0x28,%rsp
 8a9:	5b                   	pop    %rbx
 8aa:	5d                   	pop    %rbp
 8ab:	41 5c                	pop    %r12
 8ad:	41 5d                	pop    %r13
 8af:	c3                   	retq   
 8b0:	e8 3b fe ff ff       	callq  6f0 <__stack_chk_fail@plt>
 8b5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8bc:	00 00 00 
 8bf:	90                   	nop

00000000000008c0 <_start>:
 8c0:	31 ed                	xor    %ebp,%ebp
 8c2:	49 89 d1             	mov    %rdx,%r9
 8c5:	5e                   	pop    %rsi
 8c6:	48 89 e2             	mov    %rsp,%rdx
 8c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8cd:	50                   	push   %rax
 8ce:	54                   	push   %rsp
 8cf:	4c 8d 05 0a 03 00 00 	lea    0x30a(%rip),%r8        # be0 <__libc_csu_fini>
 8d6:	48 8d 0d 93 02 00 00 	lea    0x293(%rip),%rcx        # b70 <__libc_csu_init>
 8dd:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 750 <main>
 8e4:	ff 15 f6 16 20 00    	callq  *0x2016f6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8ea:	f4                   	hlt    
 8eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008f0 <deregister_tm_clones>:
 8f0:	48 8d 3d 19 17 20 00 	lea    0x201719(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 8f7:	55                   	push   %rbp
 8f8:	48 8d 05 11 17 20 00 	lea    0x201711(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 8ff:	48 39 f8             	cmp    %rdi,%rax
 902:	48 89 e5             	mov    %rsp,%rbp
 905:	74 19                	je     920 <deregister_tm_clones+0x30>
 907:	48 8b 05 ca 16 20 00 	mov    0x2016ca(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 90e:	48 85 c0             	test   %rax,%rax
 911:	74 0d                	je     920 <deregister_tm_clones+0x30>
 913:	5d                   	pop    %rbp
 914:	ff e0                	jmpq   *%rax
 916:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 91d:	00 00 00 
 920:	5d                   	pop    %rbp
 921:	c3                   	retq   
 922:	0f 1f 40 00          	nopl   0x0(%rax)
 926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 92d:	00 00 00 

0000000000000930 <register_tm_clones>:
 930:	48 8d 3d d9 16 20 00 	lea    0x2016d9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 937:	48 8d 35 d2 16 20 00 	lea    0x2016d2(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 93e:	55                   	push   %rbp
 93f:	48 29 fe             	sub    %rdi,%rsi
 942:	48 89 e5             	mov    %rsp,%rbp
 945:	48 c1 fe 03          	sar    $0x3,%rsi
 949:	48 89 f0             	mov    %rsi,%rax
 94c:	48 c1 e8 3f          	shr    $0x3f,%rax
 950:	48 01 c6             	add    %rax,%rsi
 953:	48 d1 fe             	sar    %rsi
 956:	74 18                	je     970 <register_tm_clones+0x40>
 958:	48 8b 05 91 16 20 00 	mov    0x201691(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 95f:	48 85 c0             	test   %rax,%rax
 962:	74 0c                	je     970 <register_tm_clones+0x40>
 964:	5d                   	pop    %rbp
 965:	ff e0                	jmpq   *%rax
 967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 96e:	00 00 
 970:	5d                   	pop    %rbp
 971:	c3                   	retq   
 972:	0f 1f 40 00          	nopl   0x0(%rax)
 976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 97d:	00 00 00 

0000000000000980 <__do_global_dtors_aux>:
 980:	80 3d 91 16 20 00 00 	cmpb   $0x0,0x201691(%rip)        # 202018 <completed.7698>
 987:	75 2f                	jne    9b8 <__do_global_dtors_aux+0x38>
 989:	48 83 3d 67 16 20 00 	cmpq   $0x0,0x201667(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 990:	00 
 991:	55                   	push   %rbp
 992:	48 89 e5             	mov    %rsp,%rbp
 995:	74 0c                	je     9a3 <__do_global_dtors_aux+0x23>
 997:	48 8b 3d 6a 16 20 00 	mov    0x20166a(%rip),%rdi        # 202008 <__dso_handle>
 99e:	e8 9d fd ff ff       	callq  740 <__cxa_finalize@plt>
 9a3:	e8 48 ff ff ff       	callq  8f0 <deregister_tm_clones>
 9a8:	c6 05 69 16 20 00 01 	movb   $0x1,0x201669(%rip)        # 202018 <completed.7698>
 9af:	5d                   	pop    %rbp
 9b0:	c3                   	retq   
 9b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9b8:	f3 c3                	repz retq 
 9ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009c0 <frame_dummy>:
 9c0:	55                   	push   %rbp
 9c1:	48 89 e5             	mov    %rsp,%rbp
 9c4:	5d                   	pop    %rbp
 9c5:	e9 66 ff ff ff       	jmpq   930 <register_tm_clones>
 9ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009d0 <print>:
 9d0:	48 85 ff             	test   %rdi,%rdi
 9d3:	74 5b                	je     a30 <print+0x60>
 9d5:	55                   	push   %rbp
 9d6:	53                   	push   %rbx
 9d7:	48 8d 35 16 02 00 00 	lea    0x216(%rip),%rsi        # bf4 <_IO_stdin_used+0x4>
 9de:	48 8d 2d 2c 02 00 00 	lea    0x22c(%rip),%rbp        # c11 <_IO_stdin_used+0x21>
 9e5:	48 89 fb             	mov    %rdi,%rbx
 9e8:	31 c0                	xor    %eax,%eax
 9ea:	48 83 ec 08          	sub    $0x8,%rsp
 9ee:	8b 15 28 16 20 00    	mov    0x201628(%rip),%edx        # 20201c <n>
 9f4:	bf 01 00 00 00       	mov    $0x1,%edi
 9f9:	e8 22 fd ff ff       	callq  720 <__printf_chk@plt>
 9fe:	66 90                	xchg   %ax,%ax
 a00:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a04:	48 8b 13             	mov    (%rbx),%rdx
 a07:	48 89 ee             	mov    %rbp,%rsi
 a0a:	bf 01 00 00 00       	mov    $0x1,%edi
 a0f:	b8 01 00 00 00       	mov    $0x1,%eax
 a14:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a19:	e8 02 fd ff ff       	callq  720 <__printf_chk@plt>
 a1e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a22:	48 85 db             	test   %rbx,%rbx
 a25:	75 d9                	jne    a00 <print+0x30>
 a27:	48 83 c4 08          	add    $0x8,%rsp
 a2b:	5b                   	pop    %rbx
 a2c:	5d                   	pop    %rbp
 a2d:	c3                   	retq   
 a2e:	66 90                	xchg   %ax,%ax
 a30:	48 8d 35 e5 01 00 00 	lea    0x1e5(%rip),%rsi        # c1c <_IO_stdin_used+0x2c>
 a37:	bf 01 00 00 00       	mov    $0x1,%edi
 a3c:	31 c0                	xor    %eax,%eax
 a3e:	e9 dd fc ff ff       	jmpq   720 <__printf_chk@plt>
 a43:	0f 1f 00             	nopl   (%rax)
 a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a4d:	00 00 00 

0000000000000a50 <insert>:
 a50:	48 85 ff             	test   %rdi,%rdi
 a53:	74 5b                	je     ab0 <insert+0x60>
 a55:	4c 8b 06             	mov    (%rsi),%r8
 a58:	48 89 fa             	mov    %rdi,%rdx
 a5b:	eb 12                	jmp    a6f <insert+0x1f>
 a5d:	0f 1f 00             	nopl   (%rax)
 a60:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a64:	49 89 d1             	mov    %rdx,%r9
 a67:	48 85 c9             	test   %rcx,%rcx
 a6a:	74 24                	je     a90 <insert+0x40>
 a6c:	48 89 ca             	mov    %rcx,%rdx
 a6f:	4c 3b 02             	cmp    (%rdx),%r8
 a72:	7f ec                	jg     a60 <insert+0x10>
 a74:	48 39 fa             	cmp    %rdi,%rdx
 a77:	74 4f                	je     ac8 <insert+0x78>
 a79:	49 89 71 10          	mov    %rsi,0x10(%r9)
 a7d:	48 89 f8             	mov    %rdi,%rax
 a80:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 a84:	83 05 91 15 20 00 01 	addl   $0x1,0x201591(%rip)        # 20201c <n>
 a8b:	c3                   	retq   
 a8c:	0f 1f 40 00          	nopl   0x0(%rax)
 a90:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a94:	48 89 f8             	mov    %rdi,%rax
 a97:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a9e:	00 
 a9f:	83 05 76 15 20 00 01 	addl   $0x1,0x201576(%rip)        # 20201c <n>
 aa6:	c3                   	retq   
 aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 aae:	00 00 
 ab0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 ab7:	00 
 ab8:	48 89 f0             	mov    %rsi,%rax
 abb:	83 05 5a 15 20 00 01 	addl   $0x1,0x20155a(%rip)        # 20201c <n>
 ac2:	c3                   	retq   
 ac3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 ac8:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 acc:	48 89 f0             	mov    %rsi,%rax
 acf:	83 05 46 15 20 00 01 	addl   $0x1,0x201546(%rip)        # 20201c <n>
 ad6:	c3                   	retq   
 ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 ade:	00 00 

0000000000000ae0 <create>:
 ae0:	41 54                	push   %r12
 ae2:	55                   	push   %rbp
 ae3:	48 89 fd             	mov    %rdi,%rbp
 ae6:	53                   	push   %rbx
 ae7:	bf 18 00 00 00       	mov    $0x18,%edi
 aec:	e8 0f fc ff ff       	callq  700 <malloc@plt>
 af1:	48 8d 3d 3e 01 00 00 	lea    0x13e(%rip),%rdi        # c36 <_IO_stdin_used+0x46>
 af8:	48 8d 50 08          	lea    0x8(%rax),%rdx
 afc:	48 89 c3             	mov    %rax,%rbx
 aff:	48 89 c6             	mov    %rax,%rsi
 b02:	31 c0                	xor    %eax,%eax
 b04:	e8 27 fc ff ff       	callq  730 <__isoc99_scanf@plt>
 b09:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b0d:	74 43                	je     b52 <create+0x72>
 b0f:	4c 8d 25 20 01 00 00 	lea    0x120(%rip),%r12        # c36 <_IO_stdin_used+0x46>
 b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b1d:	00 00 00 
 b20:	48 89 de             	mov    %rbx,%rsi
 b23:	48 89 ef             	mov    %rbp,%rdi
 b26:	e8 25 ff ff ff       	callq  a50 <insert>
 b2b:	bf 18 00 00 00       	mov    $0x18,%edi
 b30:	48 89 c5             	mov    %rax,%rbp
 b33:	e8 c8 fb ff ff       	callq  700 <malloc@plt>
 b38:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b3c:	48 89 c3             	mov    %rax,%rbx
 b3f:	48 89 c6             	mov    %rax,%rsi
 b42:	4c 89 e7             	mov    %r12,%rdi
 b45:	31 c0                	xor    %eax,%eax
 b47:	e8 e4 fb ff ff       	callq  730 <__isoc99_scanf@plt>
 b4c:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b50:	75 ce                	jne    b20 <create+0x40>
 b52:	48 89 e8             	mov    %rbp,%rax
 b55:	5b                   	pop    %rbx
 b56:	5d                   	pop    %rbp
 b57:	41 5c                	pop    %r12
 b59:	c3                   	retq   
 b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b60 <del>:
 b60:	48 8b 04 25 00 00 00 	mov    0x0,%rax
 b67:	00 
 b68:	0f 0b                	ud2    
 b6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b70 <__libc_csu_init>:
 b70:	41 57                	push   %r15
 b72:	41 56                	push   %r14
 b74:	49 89 d7             	mov    %rdx,%r15
 b77:	41 55                	push   %r13
 b79:	41 54                	push   %r12
 b7b:	4c 8d 25 0e 12 20 00 	lea    0x20120e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 b82:	55                   	push   %rbp
 b83:	48 8d 2d 0e 12 20 00 	lea    0x20120e(%rip),%rbp        # 201d98 <__init_array_end>
 b8a:	53                   	push   %rbx
 b8b:	41 89 fd             	mov    %edi,%r13d
 b8e:	49 89 f6             	mov    %rsi,%r14
 b91:	4c 29 e5             	sub    %r12,%rbp
 b94:	48 83 ec 08          	sub    $0x8,%rsp
 b98:	48 c1 fd 03          	sar    $0x3,%rbp
 b9c:	e8 0f fb ff ff       	callq  6b0 <_init>
 ba1:	48 85 ed             	test   %rbp,%rbp
 ba4:	74 20                	je     bc6 <__libc_csu_init+0x56>
 ba6:	31 db                	xor    %ebx,%ebx
 ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 baf:	00 
 bb0:	4c 89 fa             	mov    %r15,%rdx
 bb3:	4c 89 f6             	mov    %r14,%rsi
 bb6:	44 89 ef             	mov    %r13d,%edi
 bb9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bbd:	48 83 c3 01          	add    $0x1,%rbx
 bc1:	48 39 dd             	cmp    %rbx,%rbp
 bc4:	75 ea                	jne    bb0 <__libc_csu_init+0x40>
 bc6:	48 83 c4 08          	add    $0x8,%rsp
 bca:	5b                   	pop    %rbx
 bcb:	5d                   	pop    %rbp
 bcc:	41 5c                	pop    %r12
 bce:	41 5d                	pop    %r13
 bd0:	41 5e                	pop    %r14
 bd2:	41 5f                	pop    %r15
 bd4:	c3                   	retq   
 bd5:	90                   	nop
 bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bdd:	00 00 00 

0000000000000be0 <__libc_csu_fini>:
 be0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000be4 <_fini>:
 be4:	48 83 ec 08          	sub    $0x8,%rsp
 be8:	48 83 c4 08          	add    $0x8,%rsp
 bec:	c3                   	retq   
