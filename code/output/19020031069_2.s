
input/19020031069_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000670 <_init>:
 670:	48 83 ec 08          	sub    $0x8,%rsp
 674:	48 8b 05 6d 19 20 00 	mov    0x20196d(%rip),%rax        # 201fe8 <__gmon_start__>
 67b:	48 85 c0             	test   %rax,%rax
 67e:	74 02                	je     682 <_init+0x12>
 680:	ff d0                	callq  *%rax
 682:	48 83 c4 08          	add    $0x8,%rsp
 686:	c3                   	retq   

Disassembly of section .plt:

0000000000000690 <.plt>:
 690:	ff 35 02 19 20 00    	pushq  0x201902(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 696:	ff 25 04 19 20 00    	jmpq   *0x201904(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 69c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006a0 <free@plt>:
 6a0:	ff 25 02 19 20 00    	jmpq   *0x201902(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 6a6:	68 00 00 00 00       	pushq  $0x0
 6ab:	e9 e0 ff ff ff       	jmpq   690 <.plt>

00000000000006b0 <puts@plt>:
 6b0:	ff 25 fa 18 20 00    	jmpq   *0x2018fa(%rip)        # 201fb0 <puts@GLIBC_2.2.5>
 6b6:	68 01 00 00 00       	pushq  $0x1
 6bb:	e9 d0 ff ff ff       	jmpq   690 <.plt>

00000000000006c0 <__stack_chk_fail@plt>:
 6c0:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 6c6:	68 02 00 00 00       	pushq  $0x2
 6cb:	e9 c0 ff ff ff       	jmpq   690 <.plt>

00000000000006d0 <malloc@plt>:
 6d0:	ff 25 ea 18 20 00    	jmpq   *0x2018ea(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 6d6:	68 03 00 00 00       	pushq  $0x3
 6db:	e9 b0 ff ff ff       	jmpq   690 <.plt>

00000000000006e0 <__printf_chk@plt>:
 6e0:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 6e6:	68 04 00 00 00       	pushq  $0x4
 6eb:	e9 a0 ff ff ff       	jmpq   690 <.plt>

00000000000006f0 <__isoc99_scanf@plt>:
 6f0:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 6f6:	68 05 00 00 00       	pushq  $0x5
 6fb:	e9 90 ff ff ff       	jmpq   690 <.plt>

Disassembly of section .plt.got:

0000000000000700 <__cxa_finalize@plt>:
 700:	ff 25 f2 18 20 00    	jmpq   *0x2018f2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 706:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000710 <main>:
 710:	41 55                	push   %r13
 712:	41 54                	push   %r12
 714:	48 8d 35 cd 05 00 00 	lea    0x5cd(%rip),%rsi        # ce8 <_IO_stdin_used+0x68>
 71b:	55                   	push   %rbp
 71c:	53                   	push   %rbx
 71d:	bf 01 00 00 00       	mov    $0x1,%edi
 722:	48 83 ec 18          	sub    $0x18,%rsp
 726:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 72d:	00 00 
 72f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 734:	31 c0                	xor    %eax,%eax
 736:	49 89 e4             	mov    %rsp,%r12
 739:	4c 8d 6c 24 04       	lea    0x4(%rsp),%r13
 73e:	e8 9d ff ff ff       	callq  6e0 <__printf_chk@plt>
 743:	48 8d 3d 16 06 00 00 	lea    0x616(%rip),%rdi        # d60 <_IO_stdin_used+0xe0>
 74a:	e8 61 ff ff ff       	callq  6b0 <puts@plt>
 74f:	31 c0                	xor    %eax,%eax
 751:	e8 ca 02 00 00       	callq  a20 <create>
 756:	48 89 c7             	mov    %rax,%rdi
 759:	48 89 c3             	mov    %rax,%rbx
 75c:	e8 0f 04 00 00       	callq  b70 <put>
 761:	eb 50                	jmp    7b3 <main+0xa3>
 763:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 768:	83 f8 02             	cmp    $0x2,%eax
 76b:	75 3e                	jne    7ab <main+0x9b>
 76d:	48 8d 35 d2 05 00 00 	lea    0x5d2(%rip),%rsi        # d46 <_IO_stdin_used+0xc6>
 774:	bf 01 00 00 00       	mov    $0x1,%edi
 779:	31 c0                	xor    %eax,%eax
 77b:	e8 60 ff ff ff       	callq  6e0 <__printf_chk@plt>
 780:	48 8d 3d d1 05 00 00 	lea    0x5d1(%rip),%rdi        # d58 <_IO_stdin_used+0xd8>
 787:	4c 89 ee             	mov    %r13,%rsi
 78a:	31 c0                	xor    %eax,%eax
 78c:	e8 5f ff ff ff       	callq  6f0 <__isoc99_scanf@plt>
 791:	8b 74 24 04          	mov    0x4(%rsp),%esi
 795:	48 89 df             	mov    %rbx,%rdi
 798:	e8 33 03 00 00       	callq  ad0 <del>
 79d:	48 89 c7             	mov    %rax,%rdi
 7a0:	48 89 c3             	mov    %rax,%rbx
 7a3:	e8 c8 03 00 00       	callq  b70 <put>
 7a8:	8b 04 24             	mov    (%rsp),%eax
 7ab:	85 c0                	test   %eax,%eax
 7ad:	0f 84 99 00 00 00    	je     84c <main+0x13c>
 7b3:	48 8d 3d 43 05 00 00 	lea    0x543(%rip),%rdi        # cfd <_IO_stdin_used+0x7d>
 7ba:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%rsp)
 7c1:	e8 ea fe ff ff       	callq  6b0 <puts@plt>
 7c6:	48 8d 35 4a 05 00 00 	lea    0x54a(%rip),%rsi        # d17 <_IO_stdin_used+0x97>
 7cd:	bf 01 00 00 00       	mov    $0x1,%edi
 7d2:	31 c0                	xor    %eax,%eax
 7d4:	e8 07 ff ff ff       	callq  6e0 <__printf_chk@plt>
 7d9:	48 8d 3d 47 05 00 00 	lea    0x547(%rip),%rdi        # d27 <_IO_stdin_used+0xa7>
 7e0:	31 c0                	xor    %eax,%eax
 7e2:	4c 89 e6             	mov    %r12,%rsi
 7e5:	e8 06 ff ff ff       	callq  6f0 <__isoc99_scanf@plt>
 7ea:	8b 04 24             	mov    (%rsp),%eax
 7ed:	83 f8 01             	cmp    $0x1,%eax
 7f0:	0f 85 72 ff ff ff    	jne    768 <main+0x58>
 7f6:	48 8d 35 2d 05 00 00 	lea    0x52d(%rip),%rsi        # d2a <_IO_stdin_used+0xaa>
 7fd:	bf 01 00 00 00       	mov    $0x1,%edi
 802:	31 c0                	xor    %eax,%eax
 804:	e8 d7 fe ff ff       	callq  6e0 <__printf_chk@plt>
 809:	bf 18 00 00 00       	mov    $0x18,%edi
 80e:	e8 bd fe ff ff       	callq  6d0 <malloc@plt>
 813:	48 8d 3d 6a 04 00 00 	lea    0x46a(%rip),%rdi        # c84 <_IO_stdin_used+0x4>
 81a:	48 8d 50 08          	lea    0x8(%rax),%rdx
 81e:	48 89 c6             	mov    %rax,%rsi
 821:	48 89 c5             	mov    %rax,%rbp
 824:	31 c0                	xor    %eax,%eax
 826:	e8 c5 fe ff ff       	callq  6f0 <__isoc99_scanf@plt>
 82b:	48 89 df             	mov    %rbx,%rdi
 82e:	48 89 ee             	mov    %rbp,%rsi
 831:	e8 4a 01 00 00       	callq  980 <insert>
 836:	48 89 c7             	mov    %rax,%rdi
 839:	48 89 c3             	mov    %rax,%rbx
 83c:	e8 2f 03 00 00       	callq  b70 <put>
 841:	8b 04 24             	mov    (%rsp),%eax
 844:	85 c0                	test   %eax,%eax
 846:	0f 85 67 ff ff ff    	jne    7b3 <main+0xa3>
 84c:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 851:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 858:	00 00 
 85a:	75 0b                	jne    867 <main+0x157>
 85c:	48 83 c4 18          	add    $0x18,%rsp
 860:	5b                   	pop    %rbx
 861:	5d                   	pop    %rbp
 862:	41 5c                	pop    %r12
 864:	41 5d                	pop    %r13
 866:	c3                   	retq   
 867:	e8 54 fe ff ff       	callq  6c0 <__stack_chk_fail@plt>
 86c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000870 <_start>:
 870:	31 ed                	xor    %ebp,%ebp
 872:	49 89 d1             	mov    %rdx,%r9
 875:	5e                   	pop    %rsi
 876:	48 89 e2             	mov    %rsp,%rdx
 879:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 87d:	50                   	push   %rax
 87e:	54                   	push   %rsp
 87f:	4c 8d 05 ea 03 00 00 	lea    0x3ea(%rip),%r8        # c70 <__libc_csu_fini>
 886:	48 8d 0d 73 03 00 00 	lea    0x373(%rip),%rcx        # c00 <__libc_csu_init>
 88d:	48 8d 3d 7c fe ff ff 	lea    -0x184(%rip),%rdi        # 710 <main>
 894:	ff 15 46 17 20 00    	callq  *0x201746(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 89a:	f4                   	hlt    
 89b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008a0 <deregister_tm_clones>:
 8a0:	48 8d 3d 69 17 20 00 	lea    0x201769(%rip),%rdi        # 202010 <__TMC_END__>
 8a7:	55                   	push   %rbp
 8a8:	48 8d 05 61 17 20 00 	lea    0x201761(%rip),%rax        # 202010 <__TMC_END__>
 8af:	48 39 f8             	cmp    %rdi,%rax
 8b2:	48 89 e5             	mov    %rsp,%rbp
 8b5:	74 19                	je     8d0 <deregister_tm_clones+0x30>
 8b7:	48 8b 05 1a 17 20 00 	mov    0x20171a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8be:	48 85 c0             	test   %rax,%rax
 8c1:	74 0d                	je     8d0 <deregister_tm_clones+0x30>
 8c3:	5d                   	pop    %rbp
 8c4:	ff e0                	jmpq   *%rax
 8c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8cd:	00 00 00 
 8d0:	5d                   	pop    %rbp
 8d1:	c3                   	retq   
 8d2:	0f 1f 40 00          	nopl   0x0(%rax)
 8d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8dd:	00 00 00 

00000000000008e0 <register_tm_clones>:
 8e0:	48 8d 3d 29 17 20 00 	lea    0x201729(%rip),%rdi        # 202010 <__TMC_END__>
 8e7:	48 8d 35 22 17 20 00 	lea    0x201722(%rip),%rsi        # 202010 <__TMC_END__>
 8ee:	55                   	push   %rbp
 8ef:	48 29 fe             	sub    %rdi,%rsi
 8f2:	48 89 e5             	mov    %rsp,%rbp
 8f5:	48 c1 fe 03          	sar    $0x3,%rsi
 8f9:	48 89 f0             	mov    %rsi,%rax
 8fc:	48 c1 e8 3f          	shr    $0x3f,%rax
 900:	48 01 c6             	add    %rax,%rsi
 903:	48 d1 fe             	sar    %rsi
 906:	74 18                	je     920 <register_tm_clones+0x40>
 908:	48 8b 05 e1 16 20 00 	mov    0x2016e1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 90f:	48 85 c0             	test   %rax,%rax
 912:	74 0c                	je     920 <register_tm_clones+0x40>
 914:	5d                   	pop    %rbp
 915:	ff e0                	jmpq   *%rax
 917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 91e:	00 00 
 920:	5d                   	pop    %rbp
 921:	c3                   	retq   
 922:	0f 1f 40 00          	nopl   0x0(%rax)
 926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 92d:	00 00 00 

0000000000000930 <__do_global_dtors_aux>:
 930:	80 3d d9 16 20 00 00 	cmpb   $0x0,0x2016d9(%rip)        # 202010 <__TMC_END__>
 937:	75 2f                	jne    968 <__do_global_dtors_aux+0x38>
 939:	48 83 3d b7 16 20 00 	cmpq   $0x0,0x2016b7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 940:	00 
 941:	55                   	push   %rbp
 942:	48 89 e5             	mov    %rsp,%rbp
 945:	74 0c                	je     953 <__do_global_dtors_aux+0x23>
 947:	48 8b 3d ba 16 20 00 	mov    0x2016ba(%rip),%rdi        # 202008 <__dso_handle>
 94e:	e8 ad fd ff ff       	callq  700 <__cxa_finalize@plt>
 953:	e8 48 ff ff ff       	callq  8a0 <deregister_tm_clones>
 958:	c6 05 b1 16 20 00 01 	movb   $0x1,0x2016b1(%rip)        # 202010 <__TMC_END__>
 95f:	5d                   	pop    %rbp
 960:	c3                   	retq   
 961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 968:	f3 c3                	repz retq 
 96a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000970 <frame_dummy>:
 970:	55                   	push   %rbp
 971:	48 89 e5             	mov    %rsp,%rbp
 974:	5d                   	pop    %rbp
 975:	e9 66 ff ff ff       	jmpq   8e0 <register_tm_clones>
 97a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000980 <insert>:
 980:	48 85 ff             	test   %rdi,%rdi
 983:	74 5b                	je     9e0 <insert+0x60>
 985:	48 8b 0e             	mov    (%rsi),%rcx
 988:	48 89 f8             	mov    %rdi,%rax
 98b:	45 31 c0             	xor    %r8d,%r8d
 98e:	eb 0f                	jmp    99f <insert+0x1f>
 990:	48 8b 50 10          	mov    0x10(%rax),%rdx
 994:	49 89 c0             	mov    %rax,%r8
 997:	48 85 d2             	test   %rdx,%rdx
 99a:	74 24                	je     9c0 <insert+0x40>
 99c:	48 89 d0             	mov    %rdx,%rax
 99f:	48 39 08             	cmp    %rcx,(%rax)
 9a2:	7c ec                	jl     990 <insert+0x10>
 9a4:	48 39 f8             	cmp    %rdi,%rax
 9a7:	74 4f                	je     9f8 <insert+0x78>
 9a9:	49 89 70 10          	mov    %rsi,0x10(%r8)
 9ad:	48 89 46 10          	mov    %rax,0x10(%rsi)
 9b1:	48 89 f8             	mov    %rdi,%rax
 9b4:	83 05 59 16 20 00 01 	addl   $0x1,0x201659(%rip)        # 202014 <n>
 9bb:	c3                   	retq   
 9bc:	0f 1f 40 00          	nopl   0x0(%rax)
 9c0:	48 39 f8             	cmp    %rdi,%rax
 9c3:	74 4b                	je     a10 <insert+0x90>
 9c5:	48 89 70 10          	mov    %rsi,0x10(%rax)
 9c9:	83 05 44 16 20 00 01 	addl   $0x1,0x201644(%rip)        # 202014 <n>
 9d0:	48 89 f8             	mov    %rdi,%rax
 9d3:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 9da:	00 
 9db:	c3                   	retq   
 9dc:	0f 1f 40 00          	nopl   0x0(%rax)
 9e0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 9e7:	00 
 9e8:	48 89 f0             	mov    %rsi,%rax
 9eb:	83 05 22 16 20 00 01 	addl   $0x1,0x201622(%rip)        # 202014 <n>
 9f2:	c3                   	retq   
 9f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 9f8:	48 89 46 10          	mov    %rax,0x10(%rsi)
 9fc:	83 05 11 16 20 00 01 	addl   $0x1,0x201611(%rip)        # 202014 <n>
 a03:	48 89 f0             	mov    %rsi,%rax
 a06:	c3                   	retq   
 a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a0e:	00 00 
 a10:	48 89 70 10          	mov    %rsi,0x10(%rax)
 a14:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 a1b:	00 
 a1c:	eb 96                	jmp    9b4 <insert+0x34>
 a1e:	66 90                	xchg   %ax,%ax

0000000000000a20 <create>:
 a20:	41 54                	push   %r12
 a22:	55                   	push   %rbp
 a23:	bf 18 00 00 00       	mov    $0x18,%edi
 a28:	53                   	push   %rbx
 a29:	e8 a2 fc ff ff       	callq  6d0 <malloc@plt>
 a2e:	48 8d 3d 4f 02 00 00 	lea    0x24f(%rip),%rdi        # c84 <_IO_stdin_used+0x4>
 a35:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a39:	48 89 c3             	mov    %rax,%rbx
 a3c:	48 89 c6             	mov    %rax,%rsi
 a3f:	31 c0                	xor    %eax,%eax
 a41:	e8 aa fc ff ff       	callq  6f0 <__isoc99_scanf@plt>
 a46:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 a4a:	74 74                	je     ac0 <create+0xa0>
 a4c:	66 0f ef c9          	pxor   %xmm1,%xmm1
 a50:	31 ed                	xor    %ebp,%ebp
 a52:	0f 2e 4b 08          	ucomiss 0x8(%rbx),%xmm1
 a56:	7a 02                	jp     a5a <create+0x3a>
 a58:	74 4c                	je     aa6 <create+0x86>
 a5a:	4c 8d 25 23 02 00 00 	lea    0x223(%rip),%r12        # c84 <_IO_stdin_used+0x4>
 a61:	eb 11                	jmp    a74 <create+0x54>
 a63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a68:	66 0f ef c0          	pxor   %xmm0,%xmm0
 a6c:	0f 2e 43 08          	ucomiss 0x8(%rbx),%xmm0
 a70:	7a 02                	jp     a74 <create+0x54>
 a72:	74 32                	je     aa6 <create+0x86>
 a74:	48 89 de             	mov    %rbx,%rsi
 a77:	48 89 ef             	mov    %rbp,%rdi
 a7a:	e8 01 ff ff ff       	callq  980 <insert>
 a7f:	bf 18 00 00 00       	mov    $0x18,%edi
 a84:	48 89 c5             	mov    %rax,%rbp
 a87:	e8 44 fc ff ff       	callq  6d0 <malloc@plt>
 a8c:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a90:	48 89 c3             	mov    %rax,%rbx
 a93:	48 89 c6             	mov    %rax,%rsi
 a96:	4c 89 e7             	mov    %r12,%rdi
 a99:	31 c0                	xor    %eax,%eax
 a9b:	e8 50 fc ff ff       	callq  6f0 <__isoc99_scanf@plt>
 aa0:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 aa4:	75 c2                	jne    a68 <create+0x48>
 aa6:	48 89 df             	mov    %rbx,%rdi
 aa9:	e8 f2 fb ff ff       	callq  6a0 <free@plt>
 aae:	48 89 e8             	mov    %rbp,%rax
 ab1:	5b                   	pop    %rbx
 ab2:	5d                   	pop    %rbp
 ab3:	41 5c                	pop    %r12
 ab5:	c3                   	retq   
 ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 abd:	00 00 00 
 ac0:	31 ed                	xor    %ebp,%ebp
 ac2:	eb e2                	jmp    aa6 <create+0x86>
 ac4:	66 90                	xchg   %ax,%ax
 ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 acd:	00 00 00 

0000000000000ad0 <del>:
 ad0:	48 63 ce             	movslq %esi,%rcx
 ad3:	48 85 ff             	test   %rdi,%rdi
 ad6:	41 54                	push   %r12
 ad8:	49 89 cc             	mov    %rcx,%r12
 adb:	55                   	push   %rbp
 adc:	53                   	push   %rbx
 add:	48 89 fb             	mov    %rdi,%rbx
 ae0:	75 15                	jne    af7 <del+0x27>
 ae2:	eb 73                	jmp    b57 <del+0x87>
 ae4:	0f 1f 40 00          	nopl   0x0(%rax)
 ae8:	48 8b 47 10          	mov    0x10(%rdi),%rax
 aec:	49 89 f8             	mov    %rdi,%r8
 aef:	48 85 c0             	test   %rax,%rax
 af2:	74 4c                	je     b40 <del+0x70>
 af4:	48 89 c7             	mov    %rax,%rdi
 af7:	48 39 0f             	cmp    %rcx,(%rdi)
 afa:	7c ec                	jl     ae8 <del+0x18>
 afc:	75 42                	jne    b40 <del+0x70>
 afe:	48 39 df             	cmp    %rbx,%rdi
 b01:	48 8b 6f 10          	mov    0x10(%rdi),%rbp
 b05:	74 07                	je     b0e <del+0x3e>
 b07:	49 89 68 10          	mov    %rbp,0x10(%r8)
 b0b:	48 89 dd             	mov    %rbx,%rbp
 b0e:	83 2d ff 14 20 00 01 	subl   $0x1,0x2014ff(%rip)        # 202014 <n>
 b15:	e8 86 fb ff ff       	callq  6a0 <free@plt>
 b1a:	48 8d 35 77 01 00 00 	lea    0x177(%rip),%rsi        # c98 <_IO_stdin_used+0x18>
 b21:	44 89 e2             	mov    %r12d,%edx
 b24:	bf 01 00 00 00       	mov    $0x1,%edi
 b29:	31 c0                	xor    %eax,%eax
 b2b:	e8 b0 fb ff ff       	callq  6e0 <__printf_chk@plt>
 b30:	48 89 e8             	mov    %rbp,%rax
 b33:	5b                   	pop    %rbx
 b34:	5d                   	pop    %rbp
 b35:	41 5c                	pop    %r12
 b37:	c3                   	retq   
 b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b3f:	00 
 b40:	48 8d 3d 5e 01 00 00 	lea    0x15e(%rip),%rdi        # ca5 <_IO_stdin_used+0x25>
 b47:	48 89 dd             	mov    %rbx,%rbp
 b4a:	e8 61 fb ff ff       	callq  6b0 <puts@plt>
 b4f:	48 89 e8             	mov    %rbp,%rax
 b52:	5b                   	pop    %rbx
 b53:	5d                   	pop    %rbp
 b54:	41 5c                	pop    %r12
 b56:	c3                   	retq   
 b57:	48 8d 3d 2c 01 00 00 	lea    0x12c(%rip),%rdi        # c8a <_IO_stdin_used+0xa>
 b5e:	31 ed                	xor    %ebp,%ebp
 b60:	e8 4b fb ff ff       	callq  6b0 <puts@plt>
 b65:	eb c9                	jmp    b30 <del+0x60>
 b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b6e:	00 00 

0000000000000b70 <put>:
 b70:	48 85 ff             	test   %rdi,%rdi
 b73:	41 54                	push   %r12
 b75:	55                   	push   %rbp
 b76:	53                   	push   %rbx
 b77:	48 89 fb             	mov    %rdi,%rbx
 b7a:	74 6c                	je     be8 <put+0x78>
 b7c:	8b 15 92 14 20 00    	mov    0x201492(%rip),%edx        # 202014 <n>
 b82:	48 8d 35 3a 01 00 00 	lea    0x13a(%rip),%rsi        # cc3 <_IO_stdin_used+0x43>
 b89:	bf 01 00 00 00       	mov    $0x1,%edi
 b8e:	31 c0                	xor    %eax,%eax
 b90:	e8 4b fb ff ff       	callq  6e0 <__printf_chk@plt>
 b95:	8b 05 79 14 20 00    	mov    0x201479(%rip),%eax        # 202014 <n>
 b9b:	31 ed                	xor    %ebp,%ebp
 b9d:	4c 8d 25 3a 01 00 00 	lea    0x13a(%rip),%r12        # cde <_IO_stdin_used+0x5e>
 ba4:	85 c0                	test   %eax,%eax
 ba6:	7e 35                	jle    bdd <put+0x6d>
 ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 baf:	00 
 bb0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 bb4:	48 8b 13             	mov    (%rbx),%rdx
 bb7:	4c 89 e6             	mov    %r12,%rsi
 bba:	bf 01 00 00 00       	mov    $0x1,%edi
 bbf:	b8 01 00 00 00       	mov    $0x1,%eax
 bc4:	83 c5 01             	add    $0x1,%ebp
 bc7:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 bcc:	e8 0f fb ff ff       	callq  6e0 <__printf_chk@plt>
 bd1:	39 2d 3d 14 20 00    	cmp    %ebp,0x20143d(%rip)        # 202014 <n>
 bd7:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 bdb:	7f d3                	jg     bb0 <put+0x40>
 bdd:	5b                   	pop    %rbx
 bde:	5d                   	pop    %rbp
 bdf:	41 5c                	pop    %r12
 be1:	c3                   	retq   
 be2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 be8:	48 8d 3d bf 00 00 00 	lea    0xbf(%rip),%rdi        # cae <_IO_stdin_used+0x2e>
 bef:	e8 bc fa ff ff       	callq  6b0 <puts@plt>
 bf4:	eb 9f                	jmp    b95 <put+0x25>
 bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bfd:	00 00 00 

0000000000000c00 <__libc_csu_init>:
 c00:	41 57                	push   %r15
 c02:	41 56                	push   %r14
 c04:	49 89 d7             	mov    %rdx,%r15
 c07:	41 55                	push   %r13
 c09:	41 54                	push   %r12
 c0b:	4c 8d 25 7e 11 20 00 	lea    0x20117e(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 c12:	55                   	push   %rbp
 c13:	48 8d 2d 7e 11 20 00 	lea    0x20117e(%rip),%rbp        # 201d98 <__init_array_end>
 c1a:	53                   	push   %rbx
 c1b:	41 89 fd             	mov    %edi,%r13d
 c1e:	49 89 f6             	mov    %rsi,%r14
 c21:	4c 29 e5             	sub    %r12,%rbp
 c24:	48 83 ec 08          	sub    $0x8,%rsp
 c28:	48 c1 fd 03          	sar    $0x3,%rbp
 c2c:	e8 3f fa ff ff       	callq  670 <_init>
 c31:	48 85 ed             	test   %rbp,%rbp
 c34:	74 20                	je     c56 <__libc_csu_init+0x56>
 c36:	31 db                	xor    %ebx,%ebx
 c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c3f:	00 
 c40:	4c 89 fa             	mov    %r15,%rdx
 c43:	4c 89 f6             	mov    %r14,%rsi
 c46:	44 89 ef             	mov    %r13d,%edi
 c49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c4d:	48 83 c3 01          	add    $0x1,%rbx
 c51:	48 39 dd             	cmp    %rbx,%rbp
 c54:	75 ea                	jne    c40 <__libc_csu_init+0x40>
 c56:	48 83 c4 08          	add    $0x8,%rsp
 c5a:	5b                   	pop    %rbx
 c5b:	5d                   	pop    %rbp
 c5c:	41 5c                	pop    %r12
 c5e:	41 5d                	pop    %r13
 c60:	41 5e                	pop    %r14
 c62:	41 5f                	pop    %r15
 c64:	c3                   	retq   
 c65:	90                   	nop
 c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c6d:	00 00 00 

0000000000000c70 <__libc_csu_fini>:
 c70:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c74 <_fini>:
 c74:	48 83 ec 08          	sub    $0x8,%rsp
 c78:	48 83 c4 08          	add    $0x8,%rsp
 c7c:	c3                   	retq   
