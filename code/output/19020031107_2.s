
input/19020031107_2.elf:     file format elf64-x86-64


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
 754:	48 8d 3d 20 05 00 00 	lea    0x520(%rip),%rdi        # c7b <_IO_stdin_used+0x4b>
 75b:	55                   	push   %rbp
 75c:	53                   	push   %rbx
 75d:	48 83 ec 28          	sub    $0x28,%rsp
 761:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 768:	00 00 
 76a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 76f:	31 c0                	xor    %eax,%eax
 771:	e8 6a ff ff ff       	callq  6e0 <puts@plt>
 776:	31 c0                	xor    %eax,%eax
 778:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 77d:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 782:	e8 49 02 00 00       	callq  9d0 <create>
 787:	48 89 c7             	mov    %rax,%rdi
 78a:	48 89 c5             	mov    %rax,%rbp
 78d:	e8 fe 02 00 00       	callq  a90 <print>
 792:	eb 50                	jmp    7e4 <main+0x94>
 794:	0f 1f 40 00          	nopl   0x0(%rax)
 798:	83 f8 02             	cmp    $0x2,%eax
 79b:	75 3f                	jne    7dc <main+0x8c>
 79d:	48 8d 35 29 05 00 00 	lea    0x529(%rip),%rsi        # ccd <_IO_stdin_used+0x9d>
 7a4:	bf 01 00 00 00       	mov    $0x1,%edi
 7a9:	31 c0                	xor    %eax,%eax
 7ab:	e8 70 ff ff ff       	callq  720 <__printf_chk@plt>
 7b0:	48 8d 3d 23 05 00 00 	lea    0x523(%rip),%rdi        # cda <_IO_stdin_used+0xaa>
 7b7:	4c 89 ee             	mov    %r13,%rsi
 7ba:	31 c0                	xor    %eax,%eax
 7bc:	e8 6f ff ff ff       	callq  730 <__isoc99_scanf@plt>
 7c1:	8b 74 24 10          	mov    0x10(%rsp),%esi
 7c5:	48 89 ef             	mov    %rbp,%rdi
 7c8:	e8 33 03 00 00       	callq  b00 <del>
 7cd:	48 89 c7             	mov    %rax,%rdi
 7d0:	48 89 c5             	mov    %rax,%rbp
 7d3:	e8 b8 02 00 00       	callq  a90 <print>
 7d8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7dc:	85 c0                	test   %eax,%eax
 7de:	0f 84 b7 00 00 00    	je     89b <main+0x14b>
 7e4:	48 8d 3d a3 04 00 00 	lea    0x4a3(%rip),%rdi        # c8e <_IO_stdin_used+0x5e>
 7eb:	e8 f0 fe ff ff       	callq  6e0 <puts@plt>
 7f0:	48 8d 35 ae 04 00 00 	lea    0x4ae(%rip),%rsi        # ca5 <_IO_stdin_used+0x75>
 7f7:	bf 01 00 00 00       	mov    $0x1,%edi
 7fc:	31 c0                	xor    %eax,%eax
 7fe:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 805:	ff 
 806:	e8 15 ff ff ff       	callq  720 <__printf_chk@plt>
 80b:	48 8d 3d 9a 04 00 00 	lea    0x49a(%rip),%rdi        # cac <_IO_stdin_used+0x7c>
 812:	4c 89 e6             	mov    %r12,%rsi
 815:	31 c0                	xor    %eax,%eax
 817:	e8 14 ff ff ff       	callq  730 <__isoc99_scanf@plt>
 81c:	48 8b 3d ed 17 20 00 	mov    0x2017ed(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 823:	e8 e8 fe ff ff       	callq  710 <_IO_getc@plt>
 828:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 82c:	83 f8 01             	cmp    $0x1,%eax
 82f:	0f 85 63 ff ff ff    	jne    798 <main+0x48>
 835:	48 8d 35 73 04 00 00 	lea    0x473(%rip),%rsi        # caf <_IO_stdin_used+0x7f>
 83c:	bf 01 00 00 00       	mov    $0x1,%edi
 841:	31 c0                	xor    %eax,%eax
 843:	e8 d8 fe ff ff       	callq  720 <__printf_chk@plt>
 848:	bf 18 00 00 00       	mov    $0x18,%edi
 84d:	e8 ae fe ff ff       	callq  700 <malloc@plt>
 852:	48 8d 3d e2 03 00 00 	lea    0x3e2(%rip),%rdi        # c3b <_IO_stdin_used+0xb>
 859:	48 8d 50 08          	lea    0x8(%rax),%rdx
 85d:	48 89 c3             	mov    %rax,%rbx
 860:	48 89 c6             	mov    %rax,%rsi
 863:	31 c0                	xor    %eax,%eax
 865:	e8 c6 fe ff ff       	callq  730 <__isoc99_scanf@plt>
 86a:	48 8b 13             	mov    (%rbx),%rdx
 86d:	48 8d 35 4e 04 00 00 	lea    0x44e(%rip),%rsi        # cc2 <_IO_stdin_used+0x92>
 874:	bf 01 00 00 00       	mov    $0x1,%edi
 879:	31 c0                	xor    %eax,%eax
 87b:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
 87f:	48 89 dd             	mov    %rbx,%rbp
 882:	e8 99 fe ff ff       	callq  720 <__printf_chk@plt>
 887:	48 89 df             	mov    %rbx,%rdi
 88a:	e8 01 02 00 00       	callq  a90 <print>
 88f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 893:	85 c0                	test   %eax,%eax
 895:	0f 85 49 ff ff ff    	jne    7e4 <main+0x94>
 89b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 8a0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 8a7:	00 00 
 8a9:	75 0b                	jne    8b6 <main+0x166>
 8ab:	48 83 c4 28          	add    $0x28,%rsp
 8af:	5b                   	pop    %rbx
 8b0:	5d                   	pop    %rbp
 8b1:	41 5c                	pop    %r12
 8b3:	41 5d                	pop    %r13
 8b5:	c3                   	retq   
 8b6:	e8 35 fe ff ff       	callq  6f0 <__stack_chk_fail@plt>
 8bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008c0 <_start>:
 8c0:	31 ed                	xor    %ebp,%ebp
 8c2:	49 89 d1             	mov    %rdx,%r9
 8c5:	5e                   	pop    %rsi
 8c6:	48 89 e2             	mov    %rsp,%rdx
 8c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8cd:	50                   	push   %rax
 8ce:	54                   	push   %rsp
 8cf:	4c 8d 05 4a 03 00 00 	lea    0x34a(%rip),%r8        # c20 <__libc_csu_fini>
 8d6:	48 8d 0d d3 02 00 00 	lea    0x2d3(%rip),%rcx        # bb0 <__libc_csu_init>
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

00000000000009d0 <create>:
 9d0:	41 56                	push   %r14
 9d2:	41 55                	push   %r13
 9d4:	bf 18 00 00 00       	mov    $0x18,%edi
 9d9:	41 54                	push   %r12
 9db:	55                   	push   %rbp
 9dc:	45 31 f6             	xor    %r14d,%r14d
 9df:	53                   	push   %rbx
 9e0:	c7 05 32 16 20 00 00 	movl   $0x0,0x201632(%rip)        # 20201c <n>
 9e7:	00 00 00 
 9ea:	4c 8d 2d 4a 02 00 00 	lea    0x24a(%rip),%r13        # c3b <_IO_stdin_used+0xb>
 9f1:	e8 0a fd ff ff       	callq  700 <malloc@plt>
 9f6:	48 8d 3d 37 02 00 00 	lea    0x237(%rip),%rdi        # c34 <_IO_stdin_used+0x4>
 9fd:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a01:	49 89 c4             	mov    %rax,%r12
 a04:	48 89 c6             	mov    %rax,%rsi
 a07:	31 c0                	xor    %eax,%eax
 a09:	4c 89 e5             	mov    %r12,%rbp
 a0c:	e8 1f fd ff ff       	callq  730 <__isoc99_scanf@plt>
 a11:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 a16:	75 37                	jne    a4f <create+0x7f>
 a18:	eb 56                	jmp    a70 <create+0xa0>
 a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a20:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 a25:	bf 18 00 00 00       	mov    $0x18,%edi
 a2a:	49 89 ec             	mov    %rbp,%r12
 a2d:	e8 ce fc ff ff       	callq  700 <malloc@plt>
 a32:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a36:	48 89 c3             	mov    %rax,%rbx
 a39:	48 89 c6             	mov    %rax,%rsi
 a3c:	4c 89 ef             	mov    %r13,%rdi
 a3f:	31 c0                	xor    %eax,%eax
 a41:	e8 ea fc ff ff       	callq  730 <__isoc99_scanf@plt>
 a46:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a4a:	74 24                	je     a70 <create+0xa0>
 a4c:	48 89 dd             	mov    %rbx,%rbp
 a4f:	8b 05 c7 15 20 00    	mov    0x2015c7(%rip),%eax        # 20201c <n>
 a55:	83 c0 01             	add    $0x1,%eax
 a58:	83 f8 01             	cmp    $0x1,%eax
 a5b:	89 05 bb 15 20 00    	mov    %eax,0x2015bb(%rip)        # 20201c <n>
 a61:	75 bd                	jne    a20 <create+0x50>
 a63:	49 89 ee             	mov    %rbp,%r14
 a66:	eb bd                	jmp    a25 <create+0x55>
 a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a6f:	00 
 a70:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 a77:	00 
 a78:	4c 89 f0             	mov    %r14,%rax
 a7b:	5b                   	pop    %rbx
 a7c:	5d                   	pop    %rbp
 a7d:	41 5c                	pop    %r12
 a7f:	41 5d                	pop    %r13
 a81:	41 5e                	pop    %r14
 a83:	c3                   	retq   
 a84:	66 90                	xchg   %ax,%ax
 a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a8d:	00 00 00 

0000000000000a90 <print>:
 a90:	48 85 ff             	test   %rdi,%rdi
 a93:	74 5b                	je     af0 <print+0x60>
 a95:	55                   	push   %rbp
 a96:	53                   	push   %rbx
 a97:	48 8d 2d b0 01 00 00 	lea    0x1b0(%rip),%rbp        # c4e <_IO_stdin_used+0x1e>
 a9e:	48 89 fb             	mov    %rdi,%rbx
 aa1:	48 8d 3d 99 01 00 00 	lea    0x199(%rip),%rdi        # c41 <_IO_stdin_used+0x11>
 aa8:	48 83 ec 08          	sub    $0x8,%rsp
 aac:	e8 2f fc ff ff       	callq  6e0 <puts@plt>
 ab1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ab8:	66 0f ef c0          	pxor   %xmm0,%xmm0
 abc:	48 8b 13             	mov    (%rbx),%rdx
 abf:	48 89 ee             	mov    %rbp,%rsi
 ac2:	bf 01 00 00 00       	mov    $0x1,%edi
 ac7:	b8 01 00 00 00       	mov    $0x1,%eax
 acc:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 ad1:	e8 4a fc ff ff       	callq  720 <__printf_chk@plt>
 ad6:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 ada:	48 85 db             	test   %rbx,%rbx
 add:	75 d9                	jne    ab8 <print+0x28>
 adf:	48 83 c4 08          	add    $0x8,%rsp
 ae3:	5b                   	pop    %rbx
 ae4:	5d                   	pop    %rbp
 ae5:	c3                   	retq   
 ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 aed:	00 00 00 
 af0:	48 8d 3d 62 01 00 00 	lea    0x162(%rip),%rdi        # c59 <_IO_stdin_used+0x29>
 af7:	e9 e4 fb ff ff       	jmpq   6e0 <puts@plt>
 afc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000b00 <del>:
 b00:	48 85 ff             	test   %rdi,%rdi
 b03:	53                   	push   %rbx
 b04:	74 7d                	je     b83 <del+0x83>
 b06:	48 8b 07             	mov    (%rdi),%rax
 b09:	48 63 f6             	movslq %esi,%rsi
 b0c:	48 89 fb             	mov    %rdi,%rbx
 b0f:	48 39 f0             	cmp    %rsi,%rax
 b12:	74 64                	je     b78 <del+0x78>
 b14:	48 85 c0             	test   %rax,%rax
 b17:	75 0f                	jne    b28 <del+0x28>
 b19:	eb 55                	jmp    b70 <del+0x70>
 b1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b20:	48 85 c9             	test   %rcx,%rcx
 b23:	74 3b                	je     b60 <del+0x60>
 b25:	48 89 d7             	mov    %rdx,%rdi
 b28:	48 8b 57 10          	mov    0x10(%rdi),%rdx
 b2c:	48 8b 0a             	mov    (%rdx),%rcx
 b2f:	48 39 f1             	cmp    %rsi,%rcx
 b32:	75 ec                	jne    b20 <del+0x20>
 b34:	48 39 d3             	cmp    %rdx,%rbx
 b37:	48 8b 42 10          	mov    0x10(%rdx),%rax
 b3b:	74 41                	je     b7e <del+0x7e>
 b3d:	48 89 47 10          	mov    %rax,0x10(%rdi)
 b41:	48 8d 35 2a 01 00 00 	lea    0x12a(%rip),%rsi        # c72 <_IO_stdin_used+0x42>
 b48:	bf 01 00 00 00       	mov    $0x1,%edi
 b4d:	31 c0                	xor    %eax,%eax
 b4f:	e8 cc fb ff ff       	callq  720 <__printf_chk@plt>
 b54:	48 89 d8             	mov    %rbx,%rax
 b57:	5b                   	pop    %rbx
 b58:	c3                   	retq   
 b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 b60:	48 85 f6             	test   %rsi,%rsi
 b63:	75 dc                	jne    b41 <del+0x41>
 b65:	eb cd                	jmp    b34 <del+0x34>
 b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b6e:	00 00 
 b70:	48 85 f6             	test   %rsi,%rsi
 b73:	75 cc                	jne    b41 <del+0x41>
 b75:	0f 1f 00             	nopl   (%rax)
 b78:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b7c:	eb c3                	jmp    b41 <del+0x41>
 b7e:	48 89 c3             	mov    %rax,%rbx
 b81:	eb be                	jmp    b41 <del+0x41>
 b83:	48 8d 35 d9 00 00 00 	lea    0xd9(%rip),%rsi        # c63 <_IO_stdin_used+0x33>
 b8a:	bf 01 00 00 00       	mov    $0x1,%edi
 b8f:	31 c0                	xor    %eax,%eax
 b91:	e8 8a fb ff ff       	callq  720 <__printf_chk@plt>
 b96:	31 c0                	xor    %eax,%eax
 b98:	5b                   	pop    %rbx
 b99:	c3                   	retq   
 b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ba0 <insert>:
 ba0:	48 89 f0             	mov    %rsi,%rax
 ba3:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
 ba7:	c3                   	retq   
 ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 baf:	00 

0000000000000bb0 <__libc_csu_init>:
 bb0:	41 57                	push   %r15
 bb2:	41 56                	push   %r14
 bb4:	49 89 d7             	mov    %rdx,%r15
 bb7:	41 55                	push   %r13
 bb9:	41 54                	push   %r12
 bbb:	4c 8d 25 ce 11 20 00 	lea    0x2011ce(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 bc2:	55                   	push   %rbp
 bc3:	48 8d 2d ce 11 20 00 	lea    0x2011ce(%rip),%rbp        # 201d98 <__init_array_end>
 bca:	53                   	push   %rbx
 bcb:	41 89 fd             	mov    %edi,%r13d
 bce:	49 89 f6             	mov    %rsi,%r14
 bd1:	4c 29 e5             	sub    %r12,%rbp
 bd4:	48 83 ec 08          	sub    $0x8,%rsp
 bd8:	48 c1 fd 03          	sar    $0x3,%rbp
 bdc:	e8 cf fa ff ff       	callq  6b0 <_init>
 be1:	48 85 ed             	test   %rbp,%rbp
 be4:	74 20                	je     c06 <__libc_csu_init+0x56>
 be6:	31 db                	xor    %ebx,%ebx
 be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bef:	00 
 bf0:	4c 89 fa             	mov    %r15,%rdx
 bf3:	4c 89 f6             	mov    %r14,%rsi
 bf6:	44 89 ef             	mov    %r13d,%edi
 bf9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bfd:	48 83 c3 01          	add    $0x1,%rbx
 c01:	48 39 dd             	cmp    %rbx,%rbp
 c04:	75 ea                	jne    bf0 <__libc_csu_init+0x40>
 c06:	48 83 c4 08          	add    $0x8,%rsp
 c0a:	5b                   	pop    %rbx
 c0b:	5d                   	pop    %rbp
 c0c:	41 5c                	pop    %r12
 c0e:	41 5d                	pop    %r13
 c10:	41 5e                	pop    %r14
 c12:	41 5f                	pop    %r15
 c14:	c3                   	retq   
 c15:	90                   	nop
 c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c1d:	00 00 00 

0000000000000c20 <__libc_csu_fini>:
 c20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c24 <_fini>:
 c24:	48 83 ec 08          	sub    $0x8,%rsp
 c28:	48 83 c4 08          	add    $0x8,%rsp
 c2c:	c3                   	retq   
