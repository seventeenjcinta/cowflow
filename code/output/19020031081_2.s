
input/19020031081_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000708 <_init>:
 708:	48 83 ec 08          	sub    $0x8,%rsp
 70c:	48 8b 05 d5 18 20 00 	mov    0x2018d5(%rip),%rax        # 201fe8 <__gmon_start__>
 713:	48 85 c0             	test   %rax,%rax
 716:	74 02                	je     71a <_init+0x12>
 718:	ff d0                	callq  *%rax
 71a:	48 83 c4 08          	add    $0x8,%rsp
 71e:	c3                   	retq   

Disassembly of section .plt:

0000000000000720 <.plt>:
 720:	ff 35 6a 18 20 00    	pushq  0x20186a(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 726:	ff 25 6c 18 20 00    	jmpq   *0x20186c(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 72c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000730 <free@plt>:
 730:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fa0 <free@GLIBC_2.2.5>
 736:	68 00 00 00 00       	pushq  $0x0
 73b:	e9 e0 ff ff ff       	jmpq   720 <.plt>

0000000000000740 <puts@plt>:
 740:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 746:	68 01 00 00 00       	pushq  $0x1
 74b:	e9 d0 ff ff ff       	jmpq   720 <.plt>

0000000000000750 <__stack_chk_fail@plt>:
 750:	ff 25 5a 18 20 00    	jmpq   *0x20185a(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 756:	68 02 00 00 00       	pushq  $0x2
 75b:	e9 c0 ff ff ff       	jmpq   720 <.plt>

0000000000000760 <_IO_putc@plt>:
 760:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 201fb8 <_IO_putc@GLIBC_2.2.5>
 766:	68 03 00 00 00       	pushq  $0x3
 76b:	e9 b0 ff ff ff       	jmpq   720 <.plt>

0000000000000770 <malloc@plt>:
 770:	ff 25 4a 18 20 00    	jmpq   *0x20184a(%rip)        # 201fc0 <malloc@GLIBC_2.2.5>
 776:	68 04 00 00 00       	pushq  $0x4
 77b:	e9 a0 ff ff ff       	jmpq   720 <.plt>

0000000000000780 <__printf_chk@plt>:
 780:	ff 25 42 18 20 00    	jmpq   *0x201842(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 786:	68 05 00 00 00       	pushq  $0x5
 78b:	e9 90 ff ff ff       	jmpq   720 <.plt>

0000000000000790 <__isoc99_scanf@plt>:
 790:	ff 25 3a 18 20 00    	jmpq   *0x20183a(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 796:	68 06 00 00 00       	pushq  $0x6
 79b:	e9 80 ff ff ff       	jmpq   720 <.plt>

Disassembly of section .plt.got:

00000000000007a0 <__cxa_finalize@plt>:
 7a0:	ff 25 52 18 20 00    	jmpq   *0x201852(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 7a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000007b0 <main>:
 7b0:	41 55                	push   %r13
 7b2:	41 54                	push   %r12
 7b4:	48 8d 3d 05 06 00 00 	lea    0x605(%rip),%rdi        # dc0 <_IO_stdin_used+0x50>
 7bb:	55                   	push   %rbp
 7bc:	53                   	push   %rbx
 7bd:	48 83 ec 28          	sub    $0x28,%rsp
 7c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7c8:	00 00 
 7ca:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 7cf:	31 c0                	xor    %eax,%eax
 7d1:	e8 6a ff ff ff       	callq  740 <puts@plt>
 7d6:	48 8d 3d 83 06 00 00 	lea    0x683(%rip),%rdi        # e60 <_IO_stdin_used+0xf0>
 7dd:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 7e2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 7e7:	e8 54 ff ff ff       	callq  740 <puts@plt>
 7ec:	31 ff                	xor    %edi,%edi
 7ee:	e8 ed 02 00 00       	callq  ae0 <creat>
 7f3:	48 89 c7             	mov    %rax,%rdi
 7f6:	48 89 c3             	mov    %rax,%rbx
 7f9:	e8 62 04 00 00       	callq  c60 <print>
 7fe:	eb 4d                	jmp    84d <main+0x9d>
 800:	83 f8 02             	cmp    $0x2,%eax
 803:	75 40                	jne    845 <main+0x95>
 805:	48 8d 35 7c 06 00 00 	lea    0x67c(%rip),%rsi        # e88 <_IO_stdin_used+0x118>
 80c:	bf 01 00 00 00       	mov    $0x1,%edi
 811:	31 c0                	xor    %eax,%eax
 813:	e8 68 ff ff ff       	callq  780 <__printf_chk@plt>
 818:	48 8d 3d 0f 06 00 00 	lea    0x60f(%rip),%rdi        # e2e <_IO_stdin_used+0xbe>
 81f:	4c 89 ee             	mov    %r13,%rsi
 822:	31 c0                	xor    %eax,%eax
 824:	e8 67 ff ff ff       	callq  790 <__isoc99_scanf@plt>
 829:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 82e:	48 89 df             	mov    %rbx,%rdi
 831:	e8 1a 03 00 00       	callq  b50 <del>
 836:	48 89 c7             	mov    %rax,%rdi
 839:	48 89 c3             	mov    %rax,%rbx
 83c:	e8 1f 04 00 00       	callq  c60 <print>
 841:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 845:	85 c0                	test   %eax,%eax
 847:	0f 84 cd 00 00 00    	je     91a <main+0x16a>
 84d:	48 8b 35 bc 17 20 00 	mov    0x2017bc(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 854:	bf 0a 00 00 00       	mov    $0xa,%edi
 859:	e8 02 ff ff ff       	callq  760 <_IO_putc@plt>
 85e:	48 8d 3d 76 05 00 00 	lea    0x576(%rip),%rdi        # ddb <_IO_stdin_used+0x6b>
 865:	e8 d6 fe ff ff       	callq  740 <puts@plt>
 86a:	48 8d 35 86 05 00 00 	lea    0x586(%rip),%rsi        # df7 <_IO_stdin_used+0x87>
 871:	bf 01 00 00 00       	mov    $0x1,%edi
 876:	31 c0                	xor    %eax,%eax
 878:	e8 03 ff ff ff       	callq  780 <__printf_chk@plt>
 87d:	48 8d 3d 82 05 00 00 	lea    0x582(%rip),%rdi        # e06 <_IO_stdin_used+0x96>
 884:	31 c0                	xor    %eax,%eax
 886:	4c 89 e6             	mov    %r12,%rsi
 889:	e8 02 ff ff ff       	callq  790 <__isoc99_scanf@plt>
 88e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 892:	83 f8 01             	cmp    $0x1,%eax
 895:	0f 85 65 ff ff ff    	jne    800 <main+0x50>
 89b:	48 8d 35 67 05 00 00 	lea    0x567(%rip),%rsi        # e09 <_IO_stdin_used+0x99>
 8a2:	bf 01 00 00 00       	mov    $0x1,%edi
 8a7:	31 c0                	xor    %eax,%eax
 8a9:	e8 d2 fe ff ff       	callq  780 <__printf_chk@plt>
 8ae:	bf 18 00 00 00       	mov    $0x18,%edi
 8b3:	e8 b8 fe ff ff       	callq  770 <malloc@plt>
 8b8:	48 8d 3d b5 04 00 00 	lea    0x4b5(%rip),%rdi        # d74 <_IO_stdin_used+0x4>
 8bf:	48 8d 50 08          	lea    0x8(%rax),%rdx
 8c3:	48 89 c5             	mov    %rax,%rbp
 8c6:	48 89 c6             	mov    %rax,%rsi
 8c9:	31 c0                	xor    %eax,%eax
 8cb:	e8 c0 fe ff ff       	callq  790 <__isoc99_scanf@plt>
 8d0:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 8d4:	48 8d 35 4a 05 00 00 	lea    0x54a(%rip),%rsi        # e25 <_IO_stdin_used+0xb5>
 8db:	bf 01 00 00 00       	mov    $0x1,%edi
 8e0:	31 c0                	xor    %eax,%eax
 8e2:	e8 99 fe ff ff       	callq  780 <__printf_chk@plt>
 8e7:	48 8b 35 22 17 20 00 	mov    0x201722(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 8ee:	bf 0a 00 00 00       	mov    $0xa,%edi
 8f3:	e8 68 fe ff ff       	callq  760 <_IO_putc@plt>
 8f8:	48 89 df             	mov    %rbx,%rdi
 8fb:	48 89 ee             	mov    %rbp,%rsi
 8fe:	e8 4d 01 00 00       	callq  a50 <insert>
 903:	48 89 c7             	mov    %rax,%rdi
 906:	48 89 c3             	mov    %rax,%rbx
 909:	e8 52 03 00 00       	callq  c60 <print>
 90e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 912:	85 c0                	test   %eax,%eax
 914:	0f 85 33 ff ff ff    	jne    84d <main+0x9d>
 91a:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 91f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 926:	00 00 
 928:	75 0b                	jne    935 <main+0x185>
 92a:	48 83 c4 28          	add    $0x28,%rsp
 92e:	5b                   	pop    %rbx
 92f:	5d                   	pop    %rbp
 930:	41 5c                	pop    %r12
 932:	41 5d                	pop    %r13
 934:	c3                   	retq   
 935:	e8 16 fe ff ff       	callq  750 <__stack_chk_fail@plt>
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000940 <_start>:
 940:	31 ed                	xor    %ebp,%ebp
 942:	49 89 d1             	mov    %rdx,%r9
 945:	5e                   	pop    %rsi
 946:	48 89 e2             	mov    %rsp,%rdx
 949:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 94d:	50                   	push   %rax
 94e:	54                   	push   %rsp
 94f:	4c 8d 05 0a 04 00 00 	lea    0x40a(%rip),%r8        # d60 <__libc_csu_fini>
 956:	48 8d 0d 93 03 00 00 	lea    0x393(%rip),%rcx        # cf0 <__libc_csu_init>
 95d:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 7b0 <main>
 964:	ff 15 76 16 20 00    	callq  *0x201676(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 96a:	f4                   	hlt    
 96b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000970 <deregister_tm_clones>:
 970:	48 8d 3d 99 16 20 00 	lea    0x201699(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 977:	55                   	push   %rbp
 978:	48 8d 05 91 16 20 00 	lea    0x201691(%rip),%rax        # 202010 <stdout@@GLIBC_2.2.5>
 97f:	48 39 f8             	cmp    %rdi,%rax
 982:	48 89 e5             	mov    %rsp,%rbp
 985:	74 19                	je     9a0 <deregister_tm_clones+0x30>
 987:	48 8b 05 4a 16 20 00 	mov    0x20164a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 98e:	48 85 c0             	test   %rax,%rax
 991:	74 0d                	je     9a0 <deregister_tm_clones+0x30>
 993:	5d                   	pop    %rbp
 994:	ff e0                	jmpq   *%rax
 996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99d:	00 00 00 
 9a0:	5d                   	pop    %rbp
 9a1:	c3                   	retq   
 9a2:	0f 1f 40 00          	nopl   0x0(%rax)
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 

00000000000009b0 <register_tm_clones>:
 9b0:	48 8d 3d 59 16 20 00 	lea    0x201659(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
 9b7:	48 8d 35 52 16 20 00 	lea    0x201652(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 9be:	55                   	push   %rbp
 9bf:	48 29 fe             	sub    %rdi,%rsi
 9c2:	48 89 e5             	mov    %rsp,%rbp
 9c5:	48 c1 fe 03          	sar    $0x3,%rsi
 9c9:	48 89 f0             	mov    %rsi,%rax
 9cc:	48 c1 e8 3f          	shr    $0x3f,%rax
 9d0:	48 01 c6             	add    %rax,%rsi
 9d3:	48 d1 fe             	sar    %rsi
 9d6:	74 18                	je     9f0 <register_tm_clones+0x40>
 9d8:	48 8b 05 11 16 20 00 	mov    0x201611(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 9df:	48 85 c0             	test   %rax,%rax
 9e2:	74 0c                	je     9f0 <register_tm_clones+0x40>
 9e4:	5d                   	pop    %rbp
 9e5:	ff e0                	jmpq   *%rax
 9e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 9ee:	00 00 
 9f0:	5d                   	pop    %rbp
 9f1:	c3                   	retq   
 9f2:	0f 1f 40 00          	nopl   0x0(%rax)
 9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9fd:	00 00 00 

0000000000000a00 <__do_global_dtors_aux>:
 a00:	80 3d 11 16 20 00 00 	cmpb   $0x0,0x201611(%rip)        # 202018 <completed.7698>
 a07:	75 2f                	jne    a38 <__do_global_dtors_aux+0x38>
 a09:	48 83 3d e7 15 20 00 	cmpq   $0x0,0x2015e7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a10:	00 
 a11:	55                   	push   %rbp
 a12:	48 89 e5             	mov    %rsp,%rbp
 a15:	74 0c                	je     a23 <__do_global_dtors_aux+0x23>
 a17:	48 8b 3d ea 15 20 00 	mov    0x2015ea(%rip),%rdi        # 202008 <__dso_handle>
 a1e:	e8 7d fd ff ff       	callq  7a0 <__cxa_finalize@plt>
 a23:	e8 48 ff ff ff       	callq  970 <deregister_tm_clones>
 a28:	c6 05 e9 15 20 00 01 	movb   $0x1,0x2015e9(%rip)        # 202018 <completed.7698>
 a2f:	5d                   	pop    %rbp
 a30:	c3                   	retq   
 a31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a38:	f3 c3                	repz retq 
 a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a40 <frame_dummy>:
 a40:	55                   	push   %rbp
 a41:	48 89 e5             	mov    %rsp,%rbp
 a44:	5d                   	pop    %rbp
 a45:	e9 66 ff ff ff       	jmpq   9b0 <register_tm_clones>
 a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a50 <insert>:
 a50:	48 85 ff             	test   %rdi,%rdi
 a53:	74 5b                	je     ab0 <insert+0x60>
 a55:	4c 8b 06             	mov    (%rsi),%r8
 a58:	48 89 fa             	mov    %rdi,%rdx
 a5b:	45 31 c9             	xor    %r9d,%r9d
 a5e:	eb 0f                	jmp    a6f <insert+0x1f>
 a60:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a64:	49 89 d1             	mov    %rdx,%r9
 a67:	48 85 c9             	test   %rcx,%rcx
 a6a:	74 24                	je     a90 <insert+0x40>
 a6c:	48 89 ca             	mov    %rcx,%rdx
 a6f:	4c 39 02             	cmp    %r8,(%rdx)
 a72:	7c ec                	jl     a60 <insert+0x10>
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

0000000000000ae0 <creat>:
 ae0:	41 54                	push   %r12
 ae2:	4c 8d 25 8b 02 00 00 	lea    0x28b(%rip),%r12        # d74 <_IO_stdin_used+0x4>
 ae9:	55                   	push   %rbp
 aea:	48 89 fd             	mov    %rdi,%rbp
 aed:	53                   	push   %rbx
 aee:	eb 0e                	jmp    afe <creat+0x1e>
 af0:	48 89 ef             	mov    %rbp,%rdi
 af3:	48 89 de             	mov    %rbx,%rsi
 af6:	e8 55 ff ff ff       	callq  a50 <insert>
 afb:	48 89 c5             	mov    %rax,%rbp
 afe:	bf 18 00 00 00       	mov    $0x18,%edi
 b03:	e8 68 fc ff ff       	callq  770 <malloc@plt>
 b08:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b0c:	48 89 c3             	mov    %rax,%rbx
 b0f:	48 89 c6             	mov    %rax,%rsi
 b12:	4c 89 e7             	mov    %r12,%rdi
 b15:	31 c0                	xor    %eax,%eax
 b17:	e8 74 fc ff ff       	callq  790 <__isoc99_scanf@plt>
 b1c:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b20:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
 b27:	00 
 b28:	75 c6                	jne    af0 <creat+0x10>
 b2a:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b2e:	66 0f 2e 43 08       	ucomisd 0x8(%rbx),%xmm0
 b33:	7a bb                	jp     af0 <creat+0x10>
 b35:	75 b9                	jne    af0 <creat+0x10>
 b37:	48 89 df             	mov    %rbx,%rdi
 b3a:	e8 f1 fb ff ff       	callq  730 <free@plt>
 b3f:	48 89 e8             	mov    %rbp,%rax
 b42:	5b                   	pop    %rbx
 b43:	5d                   	pop    %rbp
 b44:	41 5c                	pop    %r12
 b46:	c3                   	retq   
 b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b4e:	00 00 

0000000000000b50 <del>:
 b50:	53                   	push   %rbx
 b51:	31 d2                	xor    %edx,%edx
 b53:	48 89 fb             	mov    %rdi,%rbx
 b56:	48 83 ec 10          	sub    $0x10,%rsp
 b5a:	48 85 ff             	test   %rdi,%rdi
 b5d:	75 18                	jne    b77 <del+0x27>
 b5f:	e9 b0 00 00 00       	jmpq   c14 <del+0xc4>
 b64:	0f 1f 40 00          	nopl   0x0(%rax)
 b68:	48 8b 47 10          	mov    0x10(%rdi),%rax
 b6c:	48 89 fa             	mov    %rdi,%rdx
 b6f:	48 85 c0             	test   %rax,%rax
 b72:	74 22                	je     b96 <del+0x46>
 b74:	48 89 c7             	mov    %rax,%rdi
 b77:	48 8b 07             	mov    (%rdi),%rax
 b7a:	48 39 c6             	cmp    %rax,%rsi
 b7d:	7f e9                	jg     b68 <del+0x18>
 b7f:	48 39 fb             	cmp    %rdi,%rbx
 b82:	74 54                	je     bd8 <del+0x88>
 b84:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
 b88:	48 85 c9             	test   %rcx,%rcx
 b8b:	0f 84 ab 00 00 00    	je     c3c <del+0xec>
 b91:	48 39 c6             	cmp    %rax,%rsi
 b94:	74 6a                	je     c00 <del+0xb0>
 b96:	48 8b 35 73 14 20 00 	mov    0x201473(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 b9d:	bf 0a 00 00 00       	mov    $0xa,%edi
 ba2:	e8 b9 fb ff ff       	callq  760 <_IO_putc@plt>
 ba7:	48 8d 35 ce 01 00 00 	lea    0x1ce(%rip),%rsi        # d7c <_IO_stdin_used+0xc>
 bae:	bf 01 00 00 00       	mov    $0x1,%edi
 bb3:	31 c0                	xor    %eax,%eax
 bb5:	e8 c6 fb ff ff       	callq  780 <__printf_chk@plt>
 bba:	8b 05 5c 14 20 00    	mov    0x20145c(%rip),%eax        # 20201c <n>
 bc0:	8d 50 01             	lea    0x1(%rax),%edx
 bc3:	48 89 d8             	mov    %rbx,%rax
 bc6:	83 ea 01             	sub    $0x1,%edx
 bc9:	89 15 4d 14 20 00    	mov    %edx,0x20144d(%rip)        # 20201c <n>
 bcf:	48 83 c4 10          	add    $0x10,%rsp
 bd3:	5b                   	pop    %rbx
 bd4:	c3                   	retq   
 bd5:	0f 1f 00             	nopl   (%rax)
 bd8:	48 39 c6             	cmp    %rax,%rsi
 bdb:	75 b9                	jne    b96 <del+0x46>
 bdd:	48 8b 43 10          	mov    0x10(%rbx),%rax
 be1:	48 89 df             	mov    %rbx,%rdi
 be4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 be9:	e8 42 fb ff ff       	callq  730 <free@plt>
 bee:	8b 15 28 14 20 00    	mov    0x201428(%rip),%edx        # 20201c <n>
 bf4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 bf9:	eb cb                	jmp    bc6 <del+0x76>
 bfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 c00:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
 c04:	e8 27 fb ff ff       	callq  730 <free@plt>
 c09:	8b 15 0d 14 20 00    	mov    0x20140d(%rip),%edx        # 20201c <n>
 c0f:	48 89 d8             	mov    %rbx,%rax
 c12:	eb b2                	jmp    bc6 <del+0x76>
 c14:	48 8b 35 f5 13 20 00 	mov    0x2013f5(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 c1b:	bf 0a 00 00 00       	mov    $0xa,%edi
 c20:	e8 3b fb ff ff       	callq  760 <_IO_putc@plt>
 c25:	48 8d 35 0c 02 00 00 	lea    0x20c(%rip),%rsi        # e38 <_IO_stdin_used+0xc8>
 c2c:	bf 01 00 00 00       	mov    $0x1,%edi
 c31:	31 c0                	xor    %eax,%eax
 c33:	e8 48 fb ff ff       	callq  780 <__printf_chk@plt>
 c38:	31 c0                	xor    %eax,%eax
 c3a:	eb 93                	jmp    bcf <del+0x7f>
 c3c:	48 39 c6             	cmp    %rax,%rsi
 c3f:	0f 85 51 ff ff ff    	jne    b96 <del+0x46>
 c45:	48 c7 42 10 00 00 00 	movq   $0x0,0x10(%rdx)
 c4c:	00 
 c4d:	e8 de fa ff ff       	callq  730 <free@plt>
 c52:	8b 15 c4 13 20 00    	mov    0x2013c4(%rip),%edx        # 20201c <n>
 c58:	48 89 d8             	mov    %rbx,%rax
 c5b:	e9 66 ff ff ff       	jmpq   bc6 <del+0x76>

0000000000000c60 <print>:
 c60:	48 8b 35 a9 13 20 00 	mov    0x2013a9(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 c67:	41 54                	push   %r12
 c69:	55                   	push   %rbp
 c6a:	53                   	push   %rbx
 c6b:	48 89 fb             	mov    %rdi,%rbx
 c6e:	bf 0a 00 00 00       	mov    $0xa,%edi
 c73:	e8 e8 fa ff ff       	callq  760 <_IO_putc@plt>
 c78:	8b 15 9e 13 20 00    	mov    0x20139e(%rip),%edx        # 20201c <n>
 c7e:	48 8d 35 12 01 00 00 	lea    0x112(%rip),%rsi        # d97 <_IO_stdin_used+0x27>
 c85:	31 c0                	xor    %eax,%eax
 c87:	bf 01 00 00 00       	mov    $0x1,%edi
 c8c:	e8 ef fa ff ff       	callq  780 <__printf_chk@plt>
 c91:	8b 05 85 13 20 00    	mov    0x201385(%rip),%eax        # 20201c <n>
 c97:	85 c0                	test   %eax,%eax
 c99:	7e 47                	jle    ce2 <print+0x82>
 c9b:	4c 8d 25 10 01 00 00 	lea    0x110(%rip),%r12        # db2 <_IO_stdin_used+0x42>
 ca2:	31 ed                	xor    %ebp,%ebp
 ca4:	0f 1f 40 00          	nopl   0x0(%rax)
 ca8:	48 8b 13             	mov    (%rbx),%rdx
 cab:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
 cb0:	4c 89 e6             	mov    %r12,%rsi
 cb3:	bf 01 00 00 00       	mov    $0x1,%edi
 cb8:	b8 01 00 00 00       	mov    $0x1,%eax
 cbd:	83 c5 01             	add    $0x1,%ebp
 cc0:	e8 bb fa ff ff       	callq  780 <__printf_chk@plt>
 cc5:	48 8b 35 44 13 20 00 	mov    0x201344(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
 ccc:	bf 0a 00 00 00       	mov    $0xa,%edi
 cd1:	e8 8a fa ff ff       	callq  760 <_IO_putc@plt>
 cd6:	39 2d 40 13 20 00    	cmp    %ebp,0x201340(%rip)        # 20201c <n>
 cdc:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 ce0:	7f c6                	jg     ca8 <print+0x48>
 ce2:	5b                   	pop    %rbx
 ce3:	5d                   	pop    %rbp
 ce4:	41 5c                	pop    %r12
 ce6:	c3                   	retq   
 ce7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 cee:	00 00 

0000000000000cf0 <__libc_csu_init>:
 cf0:	41 57                	push   %r15
 cf2:	41 56                	push   %r14
 cf4:	49 89 d7             	mov    %rdx,%r15
 cf7:	41 55                	push   %r13
 cf9:	41 54                	push   %r12
 cfb:	4c 8d 25 86 10 20 00 	lea    0x201086(%rip),%r12        # 201d88 <__frame_dummy_init_array_entry>
 d02:	55                   	push   %rbp
 d03:	48 8d 2d 86 10 20 00 	lea    0x201086(%rip),%rbp        # 201d90 <__init_array_end>
 d0a:	53                   	push   %rbx
 d0b:	41 89 fd             	mov    %edi,%r13d
 d0e:	49 89 f6             	mov    %rsi,%r14
 d11:	4c 29 e5             	sub    %r12,%rbp
 d14:	48 83 ec 08          	sub    $0x8,%rsp
 d18:	48 c1 fd 03          	sar    $0x3,%rbp
 d1c:	e8 e7 f9 ff ff       	callq  708 <_init>
 d21:	48 85 ed             	test   %rbp,%rbp
 d24:	74 20                	je     d46 <__libc_csu_init+0x56>
 d26:	31 db                	xor    %ebx,%ebx
 d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d2f:	00 
 d30:	4c 89 fa             	mov    %r15,%rdx
 d33:	4c 89 f6             	mov    %r14,%rsi
 d36:	44 89 ef             	mov    %r13d,%edi
 d39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d3d:	48 83 c3 01          	add    $0x1,%rbx
 d41:	48 39 dd             	cmp    %rbx,%rbp
 d44:	75 ea                	jne    d30 <__libc_csu_init+0x40>
 d46:	48 83 c4 08          	add    $0x8,%rsp
 d4a:	5b                   	pop    %rbx
 d4b:	5d                   	pop    %rbp
 d4c:	41 5c                	pop    %r12
 d4e:	41 5d                	pop    %r13
 d50:	41 5e                	pop    %r14
 d52:	41 5f                	pop    %r15
 d54:	c3                   	retq   
 d55:	90                   	nop
 d56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d5d:	00 00 00 

0000000000000d60 <__libc_csu_fini>:
 d60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d64 <_fini>:
 d64:	48 83 ec 08          	sub    $0x8,%rsp
 d68:	48 83 c4 08          	add    $0x8,%rsp
 d6c:	c3                   	retq   
