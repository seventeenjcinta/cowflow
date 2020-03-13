
input/19020031070_2.elf:     file format elf64-x86-64


Disassembly of section .init:

00000000000006d0 <_init>:
 6d0:	48 83 ec 08          	sub    $0x8,%rsp
 6d4:	48 8b 05 0d 19 20 00 	mov    0x20190d(%rip),%rax        # 201fe8 <__gmon_start__>
 6db:	48 85 c0             	test   %rax,%rax
 6de:	74 02                	je     6e2 <_init+0x12>
 6e0:	ff d0                	callq  *%rax
 6e2:	48 83 c4 08          	add    $0x8,%rsp
 6e6:	c3                   	retq   

Disassembly of section .plt:

00000000000006f0 <.plt>:
 6f0:	ff 35 a2 18 20 00    	pushq  0x2018a2(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 6f6:	ff 25 a4 18 20 00    	jmpq   *0x2018a4(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 6fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000700 <puts@plt>:
 700:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 706:	68 00 00 00 00       	pushq  $0x0
 70b:	e9 e0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000710 <__stack_chk_fail@plt>:
 710:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 716:	68 01 00 00 00       	pushq  $0x1
 71b:	e9 d0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000720 <malloc@plt>:
 720:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 726:	68 02 00 00 00       	pushq  $0x2
 72b:	e9 c0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000730 <_IO_getc@plt>:
 730:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
 736:	68 03 00 00 00       	pushq  $0x3
 73b:	e9 b0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000740 <__printf_chk@plt>:
 740:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 746:	68 04 00 00 00       	pushq  $0x4
 74b:	e9 a0 ff ff ff       	jmpq   6f0 <.plt>

0000000000000750 <__isoc99_scanf@plt>:
 750:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 756:	68 05 00 00 00       	pushq  $0x5
 75b:	e9 90 ff ff ff       	jmpq   6f0 <.plt>

Disassembly of section .plt.got:

0000000000000760 <__cxa_finalize@plt>:
 760:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 766:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000770 <main>:
 770:	41 55                	push   %r13
 772:	41 54                	push   %r12
 774:	48 8d 3d 15 06 00 00 	lea    0x615(%rip),%rdi        # d90 <_IO_stdin_used+0xd0>
 77b:	55                   	push   %rbp
 77c:	53                   	push   %rbx
 77d:	48 83 ec 28          	sub    $0x28,%rsp
 781:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 788:	00 00 
 78a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 78f:	31 c0                	xor    %eax,%eax
 791:	e8 6a ff ff ff       	callq  700 <puts@plt>
 796:	31 c0                	xor    %eax,%eax
 798:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 79d:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7a2:	e8 59 02 00 00       	callq  a00 <creat>
 7a7:	48 89 c7             	mov    %rax,%rdi
 7aa:	48 89 c3             	mov    %rax,%rbx
 7ad:	e8 0e 03 00 00       	callq  ac0 <print>
 7b2:	eb 51                	jmp    805 <main+0x95>
 7b4:	0f 1f 40 00          	nopl   0x0(%rax)
 7b8:	83 f8 02             	cmp    $0x2,%eax
 7bb:	75 40                	jne    7fd <main+0x8d>
 7bd:	48 8d 35 b1 05 00 00 	lea    0x5b1(%rip),%rsi        # d75 <_IO_stdin_used+0xb5>
 7c4:	bf 01 00 00 00       	mov    $0x1,%edi
 7c9:	31 c0                	xor    %eax,%eax
 7cb:	e8 70 ff ff ff       	callq  740 <__printf_chk@plt>
 7d0:	48 8d 3d b0 05 00 00 	lea    0x5b0(%rip),%rdi        # d87 <_IO_stdin_used+0xc7>
 7d7:	4c 89 ee             	mov    %r13,%rsi
 7da:	31 c0                	xor    %eax,%eax
 7dc:	e8 6f ff ff ff       	callq  750 <__isoc99_scanf@plt>
 7e1:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 7e6:	48 89 df             	mov    %rbx,%rdi
 7e9:	e8 b2 03 00 00       	callq  ba0 <del>
 7ee:	48 89 c7             	mov    %rax,%rdi
 7f1:	48 89 c3             	mov    %rax,%rbx
 7f4:	e8 c7 02 00 00       	callq  ac0 <print>
 7f9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7fd:	85 c0                	test   %eax,%eax
 7ff:	0f 84 bf 00 00 00    	je     8c4 <main+0x154>
 805:	48 8d 3d 0f 05 00 00 	lea    0x50f(%rip),%rdi        # d1b <_IO_stdin_used+0x5b>
 80c:	e8 ef fe ff ff       	callq  700 <puts@plt>
 811:	48 8d 35 21 05 00 00 	lea    0x521(%rip),%rsi        # d39 <_IO_stdin_used+0x79>
 818:	bf 01 00 00 00       	mov    $0x1,%edi
 81d:	31 c0                	xor    %eax,%eax
 81f:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 826:	ff 
 827:	e8 14 ff ff ff       	callq  740 <__printf_chk@plt>
 82c:	48 8d 3d 15 05 00 00 	lea    0x515(%rip),%rdi        # d48 <_IO_stdin_used+0x88>
 833:	4c 89 e6             	mov    %r12,%rsi
 836:	31 c0                	xor    %eax,%eax
 838:	e8 13 ff ff ff       	callq  750 <__isoc99_scanf@plt>
 83d:	48 8b 3d cc 17 20 00 	mov    0x2017cc(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 844:	e8 e7 fe ff ff       	callq  730 <_IO_getc@plt>
 849:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 84d:	83 f8 01             	cmp    $0x1,%eax
 850:	0f 85 62 ff ff ff    	jne    7b8 <main+0x48>
 856:	48 8d 35 ee 04 00 00 	lea    0x4ee(%rip),%rsi        # d4b <_IO_stdin_used+0x8b>
 85d:	bf 01 00 00 00       	mov    $0x1,%edi
 862:	31 c0                	xor    %eax,%eax
 864:	e8 d7 fe ff ff       	callq  740 <__printf_chk@plt>
 869:	bf 18 00 00 00       	mov    $0x18,%edi
 86e:	e8 ad fe ff ff       	callq  720 <malloc@plt>
 873:	48 8d 3d 4a 04 00 00 	lea    0x44a(%rip),%rdi        # cc4 <_IO_stdin_used+0x4>
 87a:	48 8d 50 08          	lea    0x8(%rax),%rdx
 87e:	48 89 c5             	mov    %rax,%rbp
 881:	48 89 c6             	mov    %rax,%rsi
 884:	31 c0                	xor    %eax,%eax
 886:	e8 c5 fe ff ff       	callq  750 <__isoc99_scanf@plt>
 88b:	48 89 df             	mov    %rbx,%rdi
 88e:	48 89 ee             	mov    %rbp,%rsi
 891:	e8 8a 02 00 00       	callq  b20 <insert>
 896:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 89a:	48 8d 35 c6 04 00 00 	lea    0x4c6(%rip),%rsi        # d67 <_IO_stdin_used+0xa7>
 8a1:	48 89 c3             	mov    %rax,%rbx
 8a4:	bf 01 00 00 00       	mov    $0x1,%edi
 8a9:	31 c0                	xor    %eax,%eax
 8ab:	e8 90 fe ff ff       	callq  740 <__printf_chk@plt>
 8b0:	48 89 df             	mov    %rbx,%rdi
 8b3:	e8 08 02 00 00       	callq  ac0 <print>
 8b8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8bc:	85 c0                	test   %eax,%eax
 8be:	0f 85 41 ff ff ff    	jne    805 <main+0x95>
 8c4:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 8c9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 8d0:	00 00 
 8d2:	75 0b                	jne    8df <main+0x16f>
 8d4:	48 83 c4 28          	add    $0x28,%rsp
 8d8:	5b                   	pop    %rbx
 8d9:	5d                   	pop    %rbp
 8da:	41 5c                	pop    %r12
 8dc:	41 5d                	pop    %r13
 8de:	c3                   	retq   
 8df:	e8 2c fe ff ff       	callq  710 <__stack_chk_fail@plt>
 8e4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8eb:	00 00 00 
 8ee:	66 90                	xchg   %ax,%ax

00000000000008f0 <_start>:
 8f0:	31 ed                	xor    %ebp,%ebp
 8f2:	49 89 d1             	mov    %rdx,%r9
 8f5:	5e                   	pop    %rsi
 8f6:	48 89 e2             	mov    %rsp,%rdx
 8f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8fd:	50                   	push   %rax
 8fe:	54                   	push   %rsp
 8ff:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # cb0 <__libc_csu_fini>
 906:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # c40 <__libc_csu_init>
 90d:	48 8d 3d 5c fe ff ff 	lea    -0x1a4(%rip),%rdi        # 770 <main>
 914:	ff 15 c6 16 20 00    	callq  *0x2016c6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 91a:	f4                   	hlt    
 91b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000920 <deregister_tm_clones>:
 920:	48 8d 3d e9 16 20 00 	lea    0x2016e9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 927:	55                   	push   %rbp
 928:	48 8d 05 e1 16 20 00 	lea    0x2016e1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 92f:	48 39 f8             	cmp    %rdi,%rax
 932:	48 89 e5             	mov    %rsp,%rbp
 935:	74 19                	je     950 <deregister_tm_clones+0x30>
 937:	48 8b 05 9a 16 20 00 	mov    0x20169a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 93e:	48 85 c0             	test   %rax,%rax
 941:	74 0d                	je     950 <deregister_tm_clones+0x30>
 943:	5d                   	pop    %rbp
 944:	ff e0                	jmpq   *%rax
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 
 950:	5d                   	pop    %rbp
 951:	c3                   	retq   
 952:	0f 1f 40 00          	nopl   0x0(%rax)
 956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 95d:	00 00 00 

0000000000000960 <register_tm_clones>:
 960:	48 8d 3d a9 16 20 00 	lea    0x2016a9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 967:	48 8d 35 a2 16 20 00 	lea    0x2016a2(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 96e:	55                   	push   %rbp
 96f:	48 29 fe             	sub    %rdi,%rsi
 972:	48 89 e5             	mov    %rsp,%rbp
 975:	48 c1 fe 03          	sar    $0x3,%rsi
 979:	48 89 f0             	mov    %rsi,%rax
 97c:	48 c1 e8 3f          	shr    $0x3f,%rax
 980:	48 01 c6             	add    %rax,%rsi
 983:	48 d1 fe             	sar    %rsi
 986:	74 18                	je     9a0 <register_tm_clones+0x40>
 988:	48 8b 05 61 16 20 00 	mov    0x201661(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 98f:	48 85 c0             	test   %rax,%rax
 992:	74 0c                	je     9a0 <register_tm_clones+0x40>
 994:	5d                   	pop    %rbp
 995:	ff e0                	jmpq   *%rax
 997:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 99e:	00 00 
 9a0:	5d                   	pop    %rbp
 9a1:	c3                   	retq   
 9a2:	0f 1f 40 00          	nopl   0x0(%rax)
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 

00000000000009b0 <__do_global_dtors_aux>:
 9b0:	80 3d 61 16 20 00 00 	cmpb   $0x0,0x201661(%rip)        # 202018 <completed.7698>
 9b7:	75 2f                	jne    9e8 <__do_global_dtors_aux+0x38>
 9b9:	48 83 3d 37 16 20 00 	cmpq   $0x0,0x201637(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9c0:	00 
 9c1:	55                   	push   %rbp
 9c2:	48 89 e5             	mov    %rsp,%rbp
 9c5:	74 0c                	je     9d3 <__do_global_dtors_aux+0x23>
 9c7:	48 8b 3d 3a 16 20 00 	mov    0x20163a(%rip),%rdi        # 202008 <__dso_handle>
 9ce:	e8 8d fd ff ff       	callq  760 <__cxa_finalize@plt>
 9d3:	e8 48 ff ff ff       	callq  920 <deregister_tm_clones>
 9d8:	c6 05 39 16 20 00 01 	movb   $0x1,0x201639(%rip)        # 202018 <completed.7698>
 9df:	5d                   	pop    %rbp
 9e0:	c3                   	retq   
 9e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9e8:	f3 c3                	repz retq 
 9ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009f0 <frame_dummy>:
 9f0:	55                   	push   %rbp
 9f1:	48 89 e5             	mov    %rsp,%rbp
 9f4:	5d                   	pop    %rbp
 9f5:	e9 66 ff ff ff       	jmpq   960 <register_tm_clones>
 9fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a00 <creat>:
 a00:	41 56                	push   %r14
 a02:	41 55                	push   %r13
 a04:	bf 18 00 00 00       	mov    $0x18,%edi
 a09:	41 54                	push   %r12
 a0b:	55                   	push   %rbp
 a0c:	45 31 f6             	xor    %r14d,%r14d
 a0f:	53                   	push   %rbx
 a10:	c7 05 02 16 20 00 00 	movl   $0x0,0x201602(%rip)        # 20201c <n>
 a17:	00 00 00 
 a1a:	4c 8d 2d a3 02 00 00 	lea    0x2a3(%rip),%r13        # cc4 <_IO_stdin_used+0x4>
 a21:	e8 fa fc ff ff       	callq  720 <malloc@plt>
 a26:	48 8d 3d 97 02 00 00 	lea    0x297(%rip),%rdi        # cc4 <_IO_stdin_used+0x4>
 a2d:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a31:	49 89 c4             	mov    %rax,%r12
 a34:	48 89 c6             	mov    %rax,%rsi
 a37:	31 c0                	xor    %eax,%eax
 a39:	4c 89 e5             	mov    %r12,%rbp
 a3c:	e8 0f fd ff ff       	callq  750 <__isoc99_scanf@plt>
 a41:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 a46:	75 37                	jne    a7f <creat+0x7f>
 a48:	eb 56                	jmp    aa0 <creat+0xa0>
 a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a50:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 a55:	bf 18 00 00 00       	mov    $0x18,%edi
 a5a:	49 89 ec             	mov    %rbp,%r12
 a5d:	e8 be fc ff ff       	callq  720 <malloc@plt>
 a62:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a66:	48 89 c3             	mov    %rax,%rbx
 a69:	48 89 c6             	mov    %rax,%rsi
 a6c:	4c 89 ef             	mov    %r13,%rdi
 a6f:	31 c0                	xor    %eax,%eax
 a71:	e8 da fc ff ff       	callq  750 <__isoc99_scanf@plt>
 a76:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a7a:	74 24                	je     aa0 <creat+0xa0>
 a7c:	48 89 dd             	mov    %rbx,%rbp
 a7f:	8b 05 97 15 20 00    	mov    0x201597(%rip),%eax        # 20201c <n>
 a85:	83 c0 01             	add    $0x1,%eax
 a88:	83 f8 01             	cmp    $0x1,%eax
 a8b:	89 05 8b 15 20 00    	mov    %eax,0x20158b(%rip)        # 20201c <n>
 a91:	75 bd                	jne    a50 <creat+0x50>
 a93:	49 89 ee             	mov    %rbp,%r14
 a96:	eb bd                	jmp    a55 <creat+0x55>
 a98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a9f:	00 
 aa0:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 aa7:	00 
 aa8:	4c 89 f0             	mov    %r14,%rax
 aab:	5b                   	pop    %rbx
 aac:	5d                   	pop    %rbp
 aad:	41 5c                	pop    %r12
 aaf:	41 5d                	pop    %r13
 ab1:	41 5e                	pop    %r14
 ab3:	c3                   	retq   
 ab4:	66 90                	xchg   %ax,%ax
 ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 abd:	00 00 00 

0000000000000ac0 <print>:
 ac0:	55                   	push   %rbp
 ac1:	53                   	push   %rbx
 ac2:	48 89 fb             	mov    %rdi,%rbx
 ac5:	48 8d 3d ff 01 00 00 	lea    0x1ff(%rip),%rdi        # ccb <_IO_stdin_used+0xb>
 acc:	48 83 ec 08          	sub    $0x8,%rsp
 ad0:	e8 2b fc ff ff       	callq  700 <puts@plt>
 ad5:	48 85 db             	test   %rbx,%rbx
 ad8:	74 35                	je     b0f <print+0x4f>
 ada:	48 8d 2d 03 02 00 00 	lea    0x203(%rip),%rbp        # ce4 <_IO_stdin_used+0x24>
 ae1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ae8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 aec:	48 8b 13             	mov    (%rbx),%rdx
 aef:	48 89 ee             	mov    %rbp,%rsi
 af2:	bf 01 00 00 00       	mov    $0x1,%edi
 af7:	b8 01 00 00 00       	mov    $0x1,%eax
 afc:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 b01:	e8 3a fc ff ff       	callq  740 <__printf_chk@plt>
 b06:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b0a:	48 85 db             	test   %rbx,%rbx
 b0d:	75 d9                	jne    ae8 <print+0x28>
 b0f:	48 83 c4 08          	add    $0x8,%rsp
 b13:	5b                   	pop    %rbx
 b14:	5d                   	pop    %rbp
 b15:	c3                   	retq   
 b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b1d:	00 00 00 

0000000000000b20 <insert>:
 b20:	48 85 ff             	test   %rdi,%rdi
 b23:	74 5b                	je     b80 <insert+0x60>
 b25:	48 8b 0e             	mov    (%rsi),%rcx
 b28:	48 89 fa             	mov    %rdi,%rdx
 b2b:	eb 12                	jmp    b3f <insert+0x1f>
 b2d:	0f 1f 00             	nopl   (%rax)
 b30:	48 8b 42 10          	mov    0x10(%rdx),%rax
 b34:	49 89 d0             	mov    %rdx,%r8
 b37:	48 85 c0             	test   %rax,%rax
 b3a:	74 24                	je     b60 <insert+0x40>
 b3c:	48 89 c2             	mov    %rax,%rdx
 b3f:	48 3b 0a             	cmp    (%rdx),%rcx
 b42:	7f ec                	jg     b30 <insert+0x10>
 b44:	48 39 fa             	cmp    %rdi,%rdx
 b47:	48 89 f0             	mov    %rsi,%rax
 b4a:	74 07                	je     b53 <insert+0x33>
 b4c:	49 89 70 10          	mov    %rsi,0x10(%r8)
 b50:	48 89 f8             	mov    %rdi,%rax
 b53:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b57:	83 05 be 14 20 00 01 	addl   $0x1,0x2014be(%rip)        # 20201c <n>
 b5e:	c3                   	retq   
 b5f:	90                   	nop
 b60:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 b64:	48 89 f8             	mov    %rdi,%rax
 b67:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b6e:	00 
 b6f:	83 05 a6 14 20 00 01 	addl   $0x1,0x2014a6(%rip)        # 20201c <n>
 b76:	c3                   	retq   
 b77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b7e:	00 00 
 b80:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b87:	00 
 b88:	48 89 f0             	mov    %rsi,%rax
 b8b:	83 05 8a 14 20 00 01 	addl   $0x1,0x20148a(%rip)        # 20201c <n>
 b92:	c3                   	retq   
 b93:	0f 1f 00             	nopl   (%rax)
 b96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b9d:	00 00 00 

0000000000000ba0 <del>:
 ba0:	55                   	push   %rbp
 ba1:	53                   	push   %rbx
 ba2:	48 89 fd             	mov    %rdi,%rbp
 ba5:	48 89 f8             	mov    %rdi,%rax
 ba8:	48 83 ec 08          	sub    $0x8,%rsp
 bac:	48 85 ff             	test   %rdi,%rdi
 baf:	75 12                	jne    bc3 <del+0x23>
 bb1:	eb 70                	jmp    c23 <del+0x83>
 bb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bb8:	48 85 db             	test   %rbx,%rbx
 bbb:	48 89 c1             	mov    %rax,%rcx
 bbe:	74 40                	je     c00 <del+0x60>
 bc0:	48 89 d8             	mov    %rbx,%rax
 bc3:	48 8b 10             	mov    (%rax),%rdx
 bc6:	48 8b 58 10          	mov    0x10(%rax),%rbx
 bca:	48 39 f2             	cmp    %rsi,%rdx
 bcd:	75 e9                	jne    bb8 <del+0x18>
 bcf:	48 39 e8             	cmp    %rbp,%rax
 bd2:	74 07                	je     bdb <del+0x3b>
 bd4:	48 89 59 10          	mov    %rbx,0x10(%rcx)
 bd8:	48 89 eb             	mov    %rbp,%rbx
 bdb:	48 8d 35 18 01 00 00 	lea    0x118(%rip),%rsi        # cfa <_IO_stdin_used+0x3a>
 be2:	bf 01 00 00 00       	mov    $0x1,%edi
 be7:	31 c0                	xor    %eax,%eax
 be9:	e8 52 fb ff ff       	callq  740 <__printf_chk@plt>
 bee:	83 2d 27 14 20 00 01 	subl   $0x1,0x201427(%rip)        # 20201c <n>
 bf5:	48 83 c4 08          	add    $0x8,%rsp
 bf9:	48 89 d8             	mov    %rbx,%rax
 bfc:	5b                   	pop    %rbx
 bfd:	5d                   	pop    %rbp
 bfe:	c3                   	retq   
 bff:	90                   	nop
 c00:	48 89 f2             	mov    %rsi,%rdx
 c03:	48 8d 35 fc 00 00 00 	lea    0xfc(%rip),%rsi        # d06 <_IO_stdin_used+0x46>
 c0a:	bf 01 00 00 00       	mov    $0x1,%edi
 c0f:	31 c0                	xor    %eax,%eax
 c11:	48 89 eb             	mov    %rbp,%rbx
 c14:	e8 27 fb ff ff       	callq  740 <__printf_chk@plt>
 c19:	48 83 c4 08          	add    $0x8,%rsp
 c1d:	48 89 d8             	mov    %rbx,%rax
 c20:	5b                   	pop    %rbx
 c21:	5d                   	pop    %rbp
 c22:	c3                   	retq   
 c23:	48 8d 3d c5 00 00 00 	lea    0xc5(%rip),%rdi        # cef <_IO_stdin_used+0x2f>
 c2a:	31 db                	xor    %ebx,%ebx
 c2c:	e8 cf fa ff ff       	callq  700 <puts@plt>
 c31:	eb c2                	jmp    bf5 <del+0x55>
 c33:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c3a:	00 00 00 
 c3d:	0f 1f 00             	nopl   (%rax)

0000000000000c40 <__libc_csu_init>:
 c40:	41 57                	push   %r15
 c42:	41 56                	push   %r14
 c44:	49 89 d7             	mov    %rdx,%r15
 c47:	41 55                	push   %r13
 c49:	41 54                	push   %r12
 c4b:	4c 8d 25 3e 11 20 00 	lea    0x20113e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 c52:	55                   	push   %rbp
 c53:	48 8d 2d 3e 11 20 00 	lea    0x20113e(%rip),%rbp        # 201d98 <__init_array_end>
 c5a:	53                   	push   %rbx
 c5b:	41 89 fd             	mov    %edi,%r13d
 c5e:	49 89 f6             	mov    %rsi,%r14
 c61:	4c 29 e5             	sub    %r12,%rbp
 c64:	48 83 ec 08          	sub    $0x8,%rsp
 c68:	48 c1 fd 03          	sar    $0x3,%rbp
 c6c:	e8 5f fa ff ff       	callq  6d0 <_init>
 c71:	48 85 ed             	test   %rbp,%rbp
 c74:	74 20                	je     c96 <__libc_csu_init+0x56>
 c76:	31 db                	xor    %ebx,%ebx
 c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c7f:	00 
 c80:	4c 89 fa             	mov    %r15,%rdx
 c83:	4c 89 f6             	mov    %r14,%rsi
 c86:	44 89 ef             	mov    %r13d,%edi
 c89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c8d:	48 83 c3 01          	add    $0x1,%rbx
 c91:	48 39 dd             	cmp    %rbx,%rbp
 c94:	75 ea                	jne    c80 <__libc_csu_init+0x40>
 c96:	48 83 c4 08          	add    $0x8,%rsp
 c9a:	5b                   	pop    %rbx
 c9b:	5d                   	pop    %rbp
 c9c:	41 5c                	pop    %r12
 c9e:	41 5d                	pop    %r13
 ca0:	41 5e                	pop    %r14
 ca2:	41 5f                	pop    %r15
 ca4:	c3                   	retq   
 ca5:	90                   	nop
 ca6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cad:	00 00 00 

0000000000000cb0 <__libc_csu_fini>:
 cb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cb4 <_fini>:
 cb4:	48 83 ec 08          	sub    $0x8,%rsp
 cb8:	48 83 c4 08          	add    $0x8,%rsp
 cbc:	c3                   	retq   
