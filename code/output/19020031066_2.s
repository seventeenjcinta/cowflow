
input/19020031066_2.elf:     file format elf64-x86-64


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
 6f3:	48 8d 3d 74 05 00 00 	lea    0x574(%rip),%rdi        # c6e <_IO_stdin_used+0x5e>
 6fa:	53                   	push   %rbx
 6fb:	48 83 ec 10          	sub    $0x10,%rsp
 6ff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 706:	00 00 
 708:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 70d:	31 c0                	xor    %eax,%eax
 70f:	e8 7c ff ff ff       	callq  690 <puts@plt>
 714:	31 c0                	xor    %eax,%eax
 716:	48 89 e5             	mov    %rsp,%rbp
 719:	e8 32 02 00 00       	callq  950 <creat>
 71e:	48 89 c7             	mov    %rax,%rdi
 721:	48 89 c3             	mov    %rax,%rbx
 724:	e8 e7 02 00 00       	callq  a10 <print>
 729:	48 8d 3d 4c 05 00 00 	lea    0x54c(%rip),%rdi        # c7c <_IO_stdin_used+0x6c>
 730:	e8 5b ff ff ff       	callq  690 <puts@plt>
 735:	48 8d 3d 5b 05 00 00 	lea    0x55b(%rip),%rdi        # c97 <_IO_stdin_used+0x87>
 73c:	48 89 ee             	mov    %rbp,%rsi
 73f:	31 c0                	xor    %eax,%eax
 741:	e8 8a ff ff ff       	callq  6d0 <__isoc99_scanf@plt>
 746:	48 8b 34 24          	mov    (%rsp),%rsi
 74a:	48 85 f6             	test   %rsi,%rsi
 74d:	74 46                	je     795 <main+0xa5>
 74f:	4c 8d 25 26 05 00 00 	lea    0x526(%rip),%r12        # c7c <_IO_stdin_used+0x6c>
 756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 75d:	00 00 00 
 760:	48 89 df             	mov    %rbx,%rdi
 763:	e8 08 03 00 00       	callq  a70 <del>
 768:	48 89 c7             	mov    %rax,%rdi
 76b:	48 89 c3             	mov    %rax,%rbx
 76e:	e8 9d 02 00 00       	callq  a10 <print>
 773:	4c 89 e7             	mov    %r12,%rdi
 776:	e8 15 ff ff ff       	callq  690 <puts@plt>
 77b:	48 8d 3d 15 05 00 00 	lea    0x515(%rip),%rdi        # c97 <_IO_stdin_used+0x87>
 782:	48 89 ee             	mov    %rbp,%rsi
 785:	31 c0                	xor    %eax,%eax
 787:	e8 44 ff ff ff       	callq  6d0 <__isoc99_scanf@plt>
 78c:	48 8b 34 24          	mov    (%rsp),%rsi
 790:	48 85 f6             	test   %rsi,%rsi
 793:	75 cb                	jne    760 <main+0x70>
 795:	48 8d 3d ff 04 00 00 	lea    0x4ff(%rip),%rdi        # c9b <_IO_stdin_used+0x8b>
 79c:	e8 ef fe ff ff       	callq  690 <puts@plt>
 7a1:	bf 18 00 00 00       	mov    $0x18,%edi
 7a6:	e8 05 ff ff ff       	callq  6b0 <malloc@plt>
 7ab:	48 8d 3d 62 04 00 00 	lea    0x462(%rip),%rdi        # c14 <_IO_stdin_used+0x4>
 7b2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 7b6:	48 89 c5             	mov    %rax,%rbp
 7b9:	48 89 c6             	mov    %rax,%rsi
 7bc:	31 c0                	xor    %eax,%eax
 7be:	e8 0d ff ff ff       	callq  6d0 <__isoc99_scanf@plt>
 7c3:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
 7c8:	74 55                	je     81f <main+0x12f>
 7ca:	4c 8d 25 ca 04 00 00 	lea    0x4ca(%rip),%r12        # c9b <_IO_stdin_used+0x8b>
 7d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7d8:	48 89 ee             	mov    %rbp,%rsi
 7db:	48 89 df             	mov    %rbx,%rdi
 7de:	e8 2d 03 00 00       	callq  b10 <insert>
 7e3:	48 89 c7             	mov    %rax,%rdi
 7e6:	48 89 c3             	mov    %rax,%rbx
 7e9:	e8 22 02 00 00       	callq  a10 <print>
 7ee:	4c 89 e7             	mov    %r12,%rdi
 7f1:	e8 9a fe ff ff       	callq  690 <puts@plt>
 7f6:	bf 18 00 00 00       	mov    $0x18,%edi
 7fb:	e8 b0 fe ff ff       	callq  6b0 <malloc@plt>
 800:	48 8d 3d 0d 04 00 00 	lea    0x40d(%rip),%rdi        # c14 <_IO_stdin_used+0x4>
 807:	48 8d 50 08          	lea    0x8(%rax),%rdx
 80b:	48 89 c5             	mov    %rax,%rbp
 80e:	48 89 c6             	mov    %rax,%rsi
 811:	31 c0                	xor    %eax,%eax
 813:	e8 b8 fe ff ff       	callq  6d0 <__isoc99_scanf@plt>
 818:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
 81d:	75 b9                	jne    7d8 <main+0xe8>
 81f:	31 c0                	xor    %eax,%eax
 821:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 826:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 82d:	00 00 
 82f:	75 09                	jne    83a <main+0x14a>
 831:	48 83 c4 10          	add    $0x10,%rsp
 835:	5b                   	pop    %rbx
 836:	5d                   	pop    %rbp
 837:	41 5c                	pop    %r12
 839:	c3                   	retq   
 83a:	e8 61 fe ff ff       	callq  6a0 <__stack_chk_fail@plt>
 83f:	90                   	nop

0000000000000840 <_start>:
 840:	31 ed                	xor    %ebp,%ebp
 842:	49 89 d1             	mov    %rdx,%r9
 845:	5e                   	pop    %rsi
 846:	48 89 e2             	mov    %rsp,%rdx
 849:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 84d:	50                   	push   %rax
 84e:	54                   	push   %rsp
 84f:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # c00 <__libc_csu_fini>
 856:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # b90 <__libc_csu_init>
 85d:	48 8d 3d 8c fe ff ff 	lea    -0x174(%rip),%rdi        # 6f0 <main>
 864:	ff 15 76 17 20 00    	callq  *0x201776(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 86a:	f4                   	hlt    
 86b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000870 <deregister_tm_clones>:
 870:	48 8d 3d 99 17 20 00 	lea    0x201799(%rip),%rdi        # 202010 <__TMC_END__>
 877:	55                   	push   %rbp
 878:	48 8d 05 91 17 20 00 	lea    0x201791(%rip),%rax        # 202010 <__TMC_END__>
 87f:	48 39 f8             	cmp    %rdi,%rax
 882:	48 89 e5             	mov    %rsp,%rbp
 885:	74 19                	je     8a0 <deregister_tm_clones+0x30>
 887:	48 8b 05 4a 17 20 00 	mov    0x20174a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 88e:	48 85 c0             	test   %rax,%rax
 891:	74 0d                	je     8a0 <deregister_tm_clones+0x30>
 893:	5d                   	pop    %rbp
 894:	ff e0                	jmpq   *%rax
 896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89d:	00 00 00 
 8a0:	5d                   	pop    %rbp
 8a1:	c3                   	retq   
 8a2:	0f 1f 40 00          	nopl   0x0(%rax)
 8a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ad:	00 00 00 

00000000000008b0 <register_tm_clones>:
 8b0:	48 8d 3d 59 17 20 00 	lea    0x201759(%rip),%rdi        # 202010 <__TMC_END__>
 8b7:	48 8d 35 52 17 20 00 	lea    0x201752(%rip),%rsi        # 202010 <__TMC_END__>
 8be:	55                   	push   %rbp
 8bf:	48 29 fe             	sub    %rdi,%rsi
 8c2:	48 89 e5             	mov    %rsp,%rbp
 8c5:	48 c1 fe 03          	sar    $0x3,%rsi
 8c9:	48 89 f0             	mov    %rsi,%rax
 8cc:	48 c1 e8 3f          	shr    $0x3f,%rax
 8d0:	48 01 c6             	add    %rax,%rsi
 8d3:	48 d1 fe             	sar    %rsi
 8d6:	74 18                	je     8f0 <register_tm_clones+0x40>
 8d8:	48 8b 05 11 17 20 00 	mov    0x201711(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 8df:	48 85 c0             	test   %rax,%rax
 8e2:	74 0c                	je     8f0 <register_tm_clones+0x40>
 8e4:	5d                   	pop    %rbp
 8e5:	ff e0                	jmpq   *%rax
 8e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8ee:	00 00 
 8f0:	5d                   	pop    %rbp
 8f1:	c3                   	retq   
 8f2:	0f 1f 40 00          	nopl   0x0(%rax)
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 

0000000000000900 <__do_global_dtors_aux>:
 900:	80 3d 09 17 20 00 00 	cmpb   $0x0,0x201709(%rip)        # 202010 <__TMC_END__>
 907:	75 2f                	jne    938 <__do_global_dtors_aux+0x38>
 909:	48 83 3d e7 16 20 00 	cmpq   $0x0,0x2016e7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 910:	00 
 911:	55                   	push   %rbp
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	74 0c                	je     923 <__do_global_dtors_aux+0x23>
 917:	48 8b 3d ea 16 20 00 	mov    0x2016ea(%rip),%rdi        # 202008 <__dso_handle>
 91e:	e8 bd fd ff ff       	callq  6e0 <__cxa_finalize@plt>
 923:	e8 48 ff ff ff       	callq  870 <deregister_tm_clones>
 928:	c6 05 e1 16 20 00 01 	movb   $0x1,0x2016e1(%rip)        # 202010 <__TMC_END__>
 92f:	5d                   	pop    %rbp
 930:	c3                   	retq   
 931:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 938:	f3 c3                	repz retq 
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000940 <frame_dummy>:
 940:	55                   	push   %rbp
 941:	48 89 e5             	mov    %rsp,%rbp
 944:	5d                   	pop    %rbp
 945:	e9 66 ff ff ff       	jmpq   8b0 <register_tm_clones>
 94a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000950 <creat>:
 950:	41 56                	push   %r14
 952:	41 55                	push   %r13
 954:	bf 18 00 00 00       	mov    $0x18,%edi
 959:	41 54                	push   %r12
 95b:	55                   	push   %rbp
 95c:	45 31 f6             	xor    %r14d,%r14d
 95f:	53                   	push   %rbx
 960:	c7 05 aa 16 20 00 00 	movl   $0x0,0x2016aa(%rip)        # 202014 <n>
 967:	00 00 00 
 96a:	4c 8d 2d a3 02 00 00 	lea    0x2a3(%rip),%r13        # c14 <_IO_stdin_used+0x4>
 971:	e8 3a fd ff ff       	callq  6b0 <malloc@plt>
 976:	48 8d 3d 97 02 00 00 	lea    0x297(%rip),%rdi        # c14 <_IO_stdin_used+0x4>
 97d:	48 8d 50 08          	lea    0x8(%rax),%rdx
 981:	49 89 c4             	mov    %rax,%r12
 984:	48 89 c6             	mov    %rax,%rsi
 987:	31 c0                	xor    %eax,%eax
 989:	4c 89 e5             	mov    %r12,%rbp
 98c:	e8 3f fd ff ff       	callq  6d0 <__isoc99_scanf@plt>
 991:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 996:	75 37                	jne    9cf <creat+0x7f>
 998:	eb 56                	jmp    9f0 <creat+0xa0>
 99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9a0:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 9a5:	bf 18 00 00 00       	mov    $0x18,%edi
 9aa:	49 89 ec             	mov    %rbp,%r12
 9ad:	e8 fe fc ff ff       	callq  6b0 <malloc@plt>
 9b2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 9b6:	48 89 c3             	mov    %rax,%rbx
 9b9:	48 89 c6             	mov    %rax,%rsi
 9bc:	4c 89 ef             	mov    %r13,%rdi
 9bf:	31 c0                	xor    %eax,%eax
 9c1:	e8 0a fd ff ff       	callq  6d0 <__isoc99_scanf@plt>
 9c6:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 9ca:	74 24                	je     9f0 <creat+0xa0>
 9cc:	48 89 dd             	mov    %rbx,%rbp
 9cf:	8b 05 3f 16 20 00    	mov    0x20163f(%rip),%eax        # 202014 <n>
 9d5:	83 c0 01             	add    $0x1,%eax
 9d8:	83 f8 01             	cmp    $0x1,%eax
 9db:	89 05 33 16 20 00    	mov    %eax,0x201633(%rip)        # 202014 <n>
 9e1:	75 bd                	jne    9a0 <creat+0x50>
 9e3:	49 89 ee             	mov    %rbp,%r14
 9e6:	eb bd                	jmp    9a5 <creat+0x55>
 9e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 9ef:	00 
 9f0:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 9f7:	00 
 9f8:	4c 89 f0             	mov    %r14,%rax
 9fb:	5b                   	pop    %rbx
 9fc:	5d                   	pop    %rbp
 9fd:	41 5c                	pop    %r12
 9ff:	41 5d                	pop    %r13
 a01:	41 5e                	pop    %r14
 a03:	c3                   	retq   
 a04:	66 90                	xchg   %ax,%ax
 a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a0d:	00 00 00 

0000000000000a10 <print>:
 a10:	55                   	push   %rbp
 a11:	53                   	push   %rbx
 a12:	48 8d 35 02 02 00 00 	lea    0x202(%rip),%rsi        # c1b <_IO_stdin_used+0xb>
 a19:	48 89 fb             	mov    %rdi,%rbx
 a1c:	31 c0                	xor    %eax,%eax
 a1e:	bf 01 00 00 00       	mov    $0x1,%edi
 a23:	48 83 ec 08          	sub    $0x8,%rsp
 a27:	8b 15 e7 15 20 00    	mov    0x2015e7(%rip),%edx        # 202014 <n>
 a2d:	e8 8e fc ff ff       	callq  6c0 <__printf_chk@plt>
 a32:	48 85 db             	test   %rbx,%rbx
 a35:	74 30                	je     a67 <print+0x57>
 a37:	48 8d 2d f8 01 00 00 	lea    0x1f8(%rip),%rbp        # c36 <_IO_stdin_used+0x26>
 a3e:	66 90                	xchg   %ax,%ax
 a40:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a44:	48 8b 13             	mov    (%rbx),%rdx
 a47:	48 89 ee             	mov    %rbp,%rsi
 a4a:	bf 01 00 00 00       	mov    $0x1,%edi
 a4f:	b8 01 00 00 00       	mov    $0x1,%eax
 a54:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 a59:	e8 62 fc ff ff       	callq  6c0 <__printf_chk@plt>
 a5e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 a62:	48 85 db             	test   %rbx,%rbx
 a65:	75 d9                	jne    a40 <print+0x30>
 a67:	48 83 c4 08          	add    $0x8,%rsp
 a6b:	5b                   	pop    %rbx
 a6c:	5d                   	pop    %rbp
 a6d:	c3                   	retq   
 a6e:	66 90                	xchg   %ax,%ax

0000000000000a70 <del>:
 a70:	55                   	push   %rbp
 a71:	53                   	push   %rbx
 a72:	48 89 fd             	mov    %rdi,%rbp
 a75:	48 89 f8             	mov    %rdi,%rax
 a78:	48 83 ec 08          	sub    $0x8,%rsp
 a7c:	48 85 ff             	test   %rdi,%rdi
 a7f:	75 12                	jne    a93 <del+0x23>
 a81:	eb 70                	jmp    af3 <del+0x83>
 a83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a88:	48 85 db             	test   %rbx,%rbx
 a8b:	48 89 c1             	mov    %rax,%rcx
 a8e:	74 40                	je     ad0 <del+0x60>
 a90:	48 89 d8             	mov    %rbx,%rax
 a93:	48 8b 10             	mov    (%rax),%rdx
 a96:	48 8b 58 10          	mov    0x10(%rax),%rbx
 a9a:	48 39 f2             	cmp    %rsi,%rdx
 a9d:	75 e9                	jne    a88 <del+0x18>
 a9f:	48 39 e8             	cmp    %rbp,%rax
 aa2:	74 07                	je     aab <del+0x3b>
 aa4:	48 89 59 10          	mov    %rbx,0x10(%rcx)
 aa8:	48 89 eb             	mov    %rbp,%rbx
 aab:	48 8d 35 9b 01 00 00 	lea    0x19b(%rip),%rsi        # c4d <_IO_stdin_used+0x3d>
 ab2:	bf 01 00 00 00       	mov    $0x1,%edi
 ab7:	31 c0                	xor    %eax,%eax
 ab9:	e8 02 fc ff ff       	callq  6c0 <__printf_chk@plt>
 abe:	83 2d 4f 15 20 00 01 	subl   $0x1,0x20154f(%rip)        # 202014 <n>
 ac5:	48 83 c4 08          	add    $0x8,%rsp
 ac9:	48 89 d8             	mov    %rbx,%rax
 acc:	5b                   	pop    %rbx
 acd:	5d                   	pop    %rbp
 ace:	c3                   	retq   
 acf:	90                   	nop
 ad0:	48 89 f2             	mov    %rsi,%rdx
 ad3:	48 8d 35 7f 01 00 00 	lea    0x17f(%rip),%rsi        # c59 <_IO_stdin_used+0x49>
 ada:	bf 01 00 00 00       	mov    $0x1,%edi
 adf:	31 c0                	xor    %eax,%eax
 ae1:	48 89 eb             	mov    %rbp,%rbx
 ae4:	e8 d7 fb ff ff       	callq  6c0 <__printf_chk@plt>
 ae9:	48 83 c4 08          	add    $0x8,%rsp
 aed:	48 89 d8             	mov    %rbx,%rax
 af0:	5b                   	pop    %rbx
 af1:	5d                   	pop    %rbp
 af2:	c3                   	retq   
 af3:	48 8d 3d 47 01 00 00 	lea    0x147(%rip),%rdi        # c41 <_IO_stdin_used+0x31>
 afa:	31 db                	xor    %ebx,%ebx
 afc:	e8 8f fb ff ff       	callq  690 <puts@plt>
 b01:	eb c2                	jmp    ac5 <del+0x55>
 b03:	0f 1f 00             	nopl   (%rax)
 b06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b0d:	00 00 00 

0000000000000b10 <insert>:
 b10:	48 85 ff             	test   %rdi,%rdi
 b13:	74 5b                	je     b70 <insert+0x60>
 b15:	48 8b 0e             	mov    (%rsi),%rcx
 b18:	48 89 fa             	mov    %rdi,%rdx
 b1b:	eb 12                	jmp    b2f <insert+0x1f>
 b1d:	0f 1f 00             	nopl   (%rax)
 b20:	48 8b 42 10          	mov    0x10(%rdx),%rax
 b24:	49 89 d0             	mov    %rdx,%r8
 b27:	48 85 c0             	test   %rax,%rax
 b2a:	74 24                	je     b50 <insert+0x40>
 b2c:	48 89 c2             	mov    %rax,%rdx
 b2f:	48 3b 0a             	cmp    (%rdx),%rcx
 b32:	7f ec                	jg     b20 <insert+0x10>
 b34:	48 39 fa             	cmp    %rdi,%rdx
 b37:	48 89 f0             	mov    %rsi,%rax
 b3a:	74 07                	je     b43 <insert+0x33>
 b3c:	49 89 70 10          	mov    %rsi,0x10(%r8)
 b40:	48 89 f8             	mov    %rdi,%rax
 b43:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b47:	83 05 c6 14 20 00 01 	addl   $0x1,0x2014c6(%rip)        # 202014 <n>
 b4e:	c3                   	retq   
 b4f:	90                   	nop
 b50:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 b54:	48 89 f8             	mov    %rdi,%rax
 b57:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b5e:	00 
 b5f:	83 05 ae 14 20 00 01 	addl   $0x1,0x2014ae(%rip)        # 202014 <n>
 b66:	c3                   	retq   
 b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b6e:	00 00 
 b70:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 b77:	00 
 b78:	48 89 f0             	mov    %rsi,%rax
 b7b:	83 05 92 14 20 00 01 	addl   $0x1,0x201492(%rip)        # 202014 <n>
 b82:	c3                   	retq   
 b83:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b8a:	00 00 00 
 b8d:	0f 1f 00             	nopl   (%rax)

0000000000000b90 <__libc_csu_init>:
 b90:	41 57                	push   %r15
 b92:	41 56                	push   %r14
 b94:	49 89 d7             	mov    %rdx,%r15
 b97:	41 55                	push   %r13
 b99:	41 54                	push   %r12
 b9b:	4c 8d 25 f6 11 20 00 	lea    0x2011f6(%rip),%r12        # 201d98 <__frame_dummy_init_array_entry>
 ba2:	55                   	push   %rbp
 ba3:	48 8d 2d f6 11 20 00 	lea    0x2011f6(%rip),%rbp        # 201da0 <__init_array_end>
 baa:	53                   	push   %rbx
 bab:	41 89 fd             	mov    %edi,%r13d
 bae:	49 89 f6             	mov    %rsi,%r14
 bb1:	4c 29 e5             	sub    %r12,%rbp
 bb4:	48 83 ec 08          	sub    $0x8,%rsp
 bb8:	48 c1 fd 03          	sar    $0x3,%rbp
 bbc:	e8 9f fa ff ff       	callq  660 <_init>
 bc1:	48 85 ed             	test   %rbp,%rbp
 bc4:	74 20                	je     be6 <__libc_csu_init+0x56>
 bc6:	31 db                	xor    %ebx,%ebx
 bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bcf:	00 
 bd0:	4c 89 fa             	mov    %r15,%rdx
 bd3:	4c 89 f6             	mov    %r14,%rsi
 bd6:	44 89 ef             	mov    %r13d,%edi
 bd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bdd:	48 83 c3 01          	add    $0x1,%rbx
 be1:	48 39 dd             	cmp    %rbx,%rbp
 be4:	75 ea                	jne    bd0 <__libc_csu_init+0x40>
 be6:	48 83 c4 08          	add    $0x8,%rsp
 bea:	5b                   	pop    %rbx
 beb:	5d                   	pop    %rbp
 bec:	41 5c                	pop    %r12
 bee:	41 5d                	pop    %r13
 bf0:	41 5e                	pop    %r14
 bf2:	41 5f                	pop    %r15
 bf4:	c3                   	retq   
 bf5:	90                   	nop
 bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bfd:	00 00 00 

0000000000000c00 <__libc_csu_fini>:
 c00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c04 <_fini>:
 c04:	48 83 ec 08          	sub    $0x8,%rsp
 c08:	48 83 c4 08          	add    $0x8,%rsp
 c0c:	c3                   	retq   
