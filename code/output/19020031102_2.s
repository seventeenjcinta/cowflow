
input/19020031102_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000740 <_init>:
 740:	48 83 ec 08          	sub    $0x8,%rsp
 744:	48 8b 05 9d 18 20 00 	mov    0x20189d(%rip),%rax        # 201fe8 <__gmon_start__>
 74b:	48 85 c0             	test   %rax,%rax
 74e:	74 02                	je     752 <_init+0x12>
 750:	ff d0                	callq  *%rax
 752:	48 83 c4 08          	add    $0x8,%rsp
 756:	c3                   	retq   

Disassembly of section .plt:

0000000000000760 <.plt>:
 760:	ff 35 22 18 20 00    	pushq  0x201822(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 766:	ff 25 24 18 20 00    	jmpq   *0x201824(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 76c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000770 <free@plt>:
 770:	ff 25 22 18 20 00    	jmpq   *0x201822(%rip)        # 201f98 <free@GLIBC_2.2.5>
 776:	68 00 00 00 00       	pushq  $0x0
 77b:	e9 e0 ff ff ff       	jmpq   760 <.plt>

0000000000000780 <puts@plt>:
 780:	ff 25 1a 18 20 00    	jmpq   *0x20181a(%rip)        # 201fa0 <puts@GLIBC_2.2.5>
 786:	68 01 00 00 00       	pushq  $0x1
 78b:	e9 d0 ff ff ff       	jmpq   760 <.plt>

0000000000000790 <__stack_chk_fail@plt>:
 790:	ff 25 12 18 20 00    	jmpq   *0x201812(%rip)        # 201fa8 <__stack_chk_fail@GLIBC_2.4>
 796:	68 02 00 00 00       	pushq  $0x2
 79b:	e9 c0 ff ff ff       	jmpq   760 <.plt>

00000000000007a0 <system@plt>:
 7a0:	ff 25 0a 18 20 00    	jmpq   *0x20180a(%rip)        # 201fb0 <system@GLIBC_2.2.5>
 7a6:	68 03 00 00 00       	pushq  $0x3
 7ab:	e9 b0 ff ff ff       	jmpq   760 <.plt>

00000000000007b0 <malloc@plt>:
 7b0:	ff 25 02 18 20 00    	jmpq   *0x201802(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 7b6:	68 04 00 00 00       	pushq  $0x4
 7bb:	e9 a0 ff ff ff       	jmpq   760 <.plt>

00000000000007c0 <_IO_getc@plt>:
 7c0:	ff 25 fa 17 20 00    	jmpq   *0x2017fa(%rip)        # 201fc0 <_IO_getc@GLIBC_2.2.5>
 7c6:	68 05 00 00 00       	pushq  $0x5
 7cb:	e9 90 ff ff ff       	jmpq   760 <.plt>

00000000000007d0 <__printf_chk@plt>:
 7d0:	ff 25 f2 17 20 00    	jmpq   *0x2017f2(%rip)        # 201fc8 <__printf_chk@GLIBC_2.3.4>
 7d6:	68 06 00 00 00       	pushq  $0x6
 7db:	e9 80 ff ff ff       	jmpq   760 <.plt>

00000000000007e0 <__isoc99_scanf@plt>:
 7e0:	ff 25 ea 17 20 00    	jmpq   *0x2017ea(%rip)        # 201fd0 <__isoc99_scanf@GLIBC_2.7>
 7e6:	68 07 00 00 00       	pushq  $0x7
 7eb:	e9 70 ff ff ff       	jmpq   760 <.plt>

Disassembly of section .plt.got:

00000000000007f0 <__cxa_finalize@plt>:
 7f0:	ff 25 02 18 20 00    	jmpq   *0x201802(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 7f6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000800 <main>:
 800:	41 55                	push   %r13
 802:	41 54                	push   %r12
 804:	48 8d 3d 15 06 00 00 	lea    0x615(%rip),%rdi        # e20 <_IO_stdin_used+0xa0>
 80b:	55                   	push   %rbp
 80c:	53                   	push   %rbx
 80d:	48 83 ec 28          	sub    $0x28,%rsp
 811:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 818:	00 00 
 81a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 81f:	31 c0                	xor    %eax,%eax
 821:	e8 5a ff ff ff       	callq  780 <puts@plt>
 826:	48 8d 3d 13 06 00 00 	lea    0x613(%rip),%rdi        # e40 <_IO_stdin_used+0xc0>
 82d:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
 832:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 837:	e8 44 ff ff ff       	callq  780 <puts@plt>
 83c:	31 c0                	xor    %eax,%eax
 83e:	e8 6d 02 00 00       	callq  ab0 <creat>
 843:	48 89 c7             	mov    %rax,%rdi
 846:	48 89 c3             	mov    %rax,%rbx
 849:	e8 52 04 00 00       	callq  ca0 <print>
 84e:	eb 4d                	jmp    89d <main+0x9d>
 850:	83 f8 02             	cmp    $0x2,%eax
 853:	75 40                	jne    895 <main+0x95>
 855:	48 8d 35 a8 05 00 00 	lea    0x5a8(%rip),%rsi        # e04 <_IO_stdin_used+0x84>
 85c:	bf 01 00 00 00       	mov    $0x1,%edi
 861:	31 c0                	xor    %eax,%eax
 863:	e8 68 ff ff ff       	callq  7d0 <__printf_chk@plt>
 868:	48 8d 3d a2 05 00 00 	lea    0x5a2(%rip),%rdi        # e11 <_IO_stdin_used+0x91>
 86f:	4c 89 ee             	mov    %r13,%rsi
 872:	31 c0                	xor    %eax,%eax
 874:	e8 67 ff ff ff       	callq  7e0 <__isoc99_scanf@plt>
 879:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 87e:	48 89 df             	mov    %rbx,%rdi
 881:	e8 8a 03 00 00       	callq  c10 <dell>
 886:	48 89 c7             	mov    %rax,%rdi
 889:	48 89 c3             	mov    %rax,%rbx
 88c:	e8 0f 04 00 00       	callq  ca0 <print>
 891:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 895:	85 c0                	test   %eax,%eax
 897:	0f 84 cb 00 00 00    	je     968 <main+0x168>
 89d:	48 8d 3d dc 05 00 00 	lea    0x5dc(%rip),%rdi        # e80 <_IO_stdin_used+0x100>
 8a4:	e8 d7 fe ff ff       	callq  780 <puts@plt>
 8a9:	48 8d 35 1f 05 00 00 	lea    0x51f(%rip),%rsi        # dcf <_IO_stdin_used+0x4f>
 8b0:	bf 01 00 00 00       	mov    $0x1,%edi
 8b5:	31 c0                	xor    %eax,%eax
 8b7:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%rsp)
 8be:	ff 
 8bf:	e8 0c ff ff ff       	callq  7d0 <__printf_chk@plt>
 8c4:	48 8b 3d 45 17 20 00 	mov    0x201745(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 8cb:	e8 f0 fe ff ff       	callq  7c0 <_IO_getc@plt>
 8d0:	48 8d 3d 08 05 00 00 	lea    0x508(%rip),%rdi        # ddf <_IO_stdin_used+0x5f>
 8d7:	4c 89 e6             	mov    %r12,%rsi
 8da:	31 c0                	xor    %eax,%eax
 8dc:	e8 ff fe ff ff       	callq  7e0 <__isoc99_scanf@plt>
 8e1:	48 8b 3d 28 17 20 00 	mov    0x201728(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 8e8:	e8 d3 fe ff ff       	callq  7c0 <_IO_getc@plt>
 8ed:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 8f1:	83 f8 01             	cmp    $0x1,%eax
 8f4:	0f 85 56 ff ff ff    	jne    850 <main+0x50>
 8fa:	48 8d 35 e1 04 00 00 	lea    0x4e1(%rip),%rsi        # de2 <_IO_stdin_used+0x62>
 901:	bf 01 00 00 00       	mov    $0x1,%edi
 906:	31 c0                	xor    %eax,%eax
 908:	e8 c3 fe ff ff       	callq  7d0 <__printf_chk@plt>
 90d:	bf 18 00 00 00       	mov    $0x18,%edi
 912:	e8 99 fe ff ff       	callq  7b0 <malloc@plt>
 917:	48 8d 3d 66 04 00 00 	lea    0x466(%rip),%rdi        # d84 <_IO_stdin_used+0x4>
 91e:	48 8d 50 08          	lea    0x8(%rax),%rdx
 922:	48 89 c5             	mov    %rax,%rbp
 925:	48 89 c6             	mov    %rax,%rsi
 928:	31 c0                	xor    %eax,%eax
 92a:	e8 b1 fe ff ff       	callq  7e0 <__isoc99_scanf@plt>
 92f:	48 89 df             	mov    %rbx,%rdi
 932:	48 89 ee             	mov    %rbp,%rsi
 935:	e8 36 02 00 00       	callq  b70 <insert>
 93a:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 93e:	48 8d 35 b0 04 00 00 	lea    0x4b0(%rip),%rsi        # df5 <_IO_stdin_used+0x75>
 945:	48 89 c3             	mov    %rax,%rbx
 948:	bf 01 00 00 00       	mov    $0x1,%edi
 94d:	31 c0                	xor    %eax,%eax
 94f:	e8 7c fe ff ff       	callq  7d0 <__printf_chk@plt>
 954:	48 89 df             	mov    %rbx,%rdi
 957:	e8 44 03 00 00       	callq  ca0 <print>
 95c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 960:	85 c0                	test   %eax,%eax
 962:	0f 85 35 ff ff ff    	jne    89d <main+0x9d>
 968:	48 8d 3d a6 04 00 00 	lea    0x4a6(%rip),%rdi        # e15 <_IO_stdin_used+0x95>
 96f:	e8 2c fe ff ff       	callq  7a0 <system@plt>
 974:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 979:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 980:	00 00 
 982:	75 0b                	jne    98f <main+0x18f>
 984:	48 83 c4 28          	add    $0x28,%rsp
 988:	5b                   	pop    %rbx
 989:	5d                   	pop    %rbp
 98a:	41 5c                	pop    %r12
 98c:	41 5d                	pop    %r13
 98e:	c3                   	retq   
 98f:	e8 fc fd ff ff       	callq  790 <__stack_chk_fail@plt>
 994:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 99b:	00 00 00 
 99e:	66 90                	xchg   %ax,%ax

00000000000009a0 <_start>:
 9a0:	31 ed                	xor    %ebp,%ebp
 9a2:	49 89 d1             	mov    %rdx,%r9
 9a5:	5e                   	pop    %rsi
 9a6:	48 89 e2             	mov    %rsp,%rdx
 9a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 9ad:	50                   	push   %rax
 9ae:	54                   	push   %rsp
 9af:	4c 8d 05 ba 03 00 00 	lea    0x3ba(%rip),%r8        # d70 <__libc_csu_fini>
 9b6:	48 8d 0d 43 03 00 00 	lea    0x343(%rip),%rcx        # d00 <__libc_csu_init>
 9bd:	48 8d 3d 3c fe ff ff 	lea    -0x1c4(%rip),%rdi        # 800 <main>
 9c4:	ff 15 16 16 20 00    	callq  *0x201616(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 9ca:	f4                   	hlt    
 9cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009d0 <deregister_tm_clones>:
 9d0:	48 8d 3d 39 16 20 00 	lea    0x201639(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 9d7:	55                   	push   %rbp
 9d8:	48 8d 05 31 16 20 00 	lea    0x201631(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
 9df:	48 39 f8             	cmp    %rdi,%rax
 9e2:	48 89 e5             	mov    %rsp,%rbp
 9e5:	74 19                	je     a00 <deregister_tm_clones+0x30>
 9e7:	48 8b 05 ea 15 20 00 	mov    0x2015ea(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 9ee:	48 85 c0             	test   %rax,%rax
 9f1:	74 0d                	je     a00 <deregister_tm_clones+0x30>
 9f3:	5d                   	pop    %rbp
 9f4:	ff e0                	jmpq   *%rax
 9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9fd:	00 00 00 
 a00:	5d                   	pop    %rbp
 a01:	c3                   	retq   
 a02:	0f 1f 40 00          	nopl   0x0(%rax)
 a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a0d:	00 00 00 

0000000000000a10 <register_tm_clones>:
 a10:	48 8d 3d f9 15 20 00 	lea    0x2015f9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
 a17:	48 8d 35 f2 15 20 00 	lea    0x2015f2(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
 a1e:	55                   	push   %rbp
 a1f:	48 29 fe             	sub    %rdi,%rsi
 a22:	48 89 e5             	mov    %rsp,%rbp
 a25:	48 c1 fe 03          	sar    $0x3,%rsi
 a29:	48 89 f0             	mov    %rsi,%rax
 a2c:	48 c1 e8 3f          	shr    $0x3f,%rax
 a30:	48 01 c6             	add    %rax,%rsi
 a33:	48 d1 fe             	sar    %rsi
 a36:	74 18                	je     a50 <register_tm_clones+0x40>
 a38:	48 8b 05 b1 15 20 00 	mov    0x2015b1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 a3f:	48 85 c0             	test   %rax,%rax
 a42:	74 0c                	je     a50 <register_tm_clones+0x40>
 a44:	5d                   	pop    %rbp
 a45:	ff e0                	jmpq   *%rax
 a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a4e:	00 00 
 a50:	5d                   	pop    %rbp
 a51:	c3                   	retq   
 a52:	0f 1f 40 00          	nopl   0x0(%rax)
 a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a5d:	00 00 00 

0000000000000a60 <__do_global_dtors_aux>:
 a60:	80 3d b1 15 20 00 00 	cmpb   $0x0,0x2015b1(%rip)        # 202018 <completed.7698>
 a67:	75 2f                	jne    a98 <__do_global_dtors_aux+0x38>
 a69:	48 83 3d 87 15 20 00 	cmpq   $0x0,0x201587(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 a70:	00 
 a71:	55                   	push   %rbp
 a72:	48 89 e5             	mov    %rsp,%rbp
 a75:	74 0c                	je     a83 <__do_global_dtors_aux+0x23>
 a77:	48 8b 3d 8a 15 20 00 	mov    0x20158a(%rip),%rdi        # 202008 <__dso_handle>
 a7e:	e8 6d fd ff ff       	callq  7f0 <__cxa_finalize@plt>
 a83:	e8 48 ff ff ff       	callq  9d0 <deregister_tm_clones>
 a88:	c6 05 89 15 20 00 01 	movb   $0x1,0x201589(%rip)        # 202018 <completed.7698>
 a8f:	5d                   	pop    %rbp
 a90:	c3                   	retq   
 a91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a98:	f3 c3                	repz retq 
 a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000aa0 <frame_dummy>:
 aa0:	55                   	push   %rbp
 aa1:	48 89 e5             	mov    %rsp,%rbp
 aa4:	5d                   	pop    %rbp
 aa5:	e9 66 ff ff ff       	jmpq   a10 <register_tm_clones>
 aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ab0 <creat>:
 ab0:	41 56                	push   %r14
 ab2:	41 55                	push   %r13
 ab4:	bf 18 00 00 00       	mov    $0x18,%edi
 ab9:	41 54                	push   %r12
 abb:	55                   	push   %rbp
 abc:	45 31 f6             	xor    %r14d,%r14d
 abf:	53                   	push   %rbx
 ac0:	c7 05 52 15 20 00 00 	movl   $0x0,0x201552(%rip)        # 20201c <n>
 ac7:	00 00 00 
 aca:	4c 8d 2d b3 02 00 00 	lea    0x2b3(%rip),%r13        # d84 <_IO_stdin_used+0x4>
 ad1:	e8 da fc ff ff       	callq  7b0 <malloc@plt>
 ad6:	48 8d 3d a7 02 00 00 	lea    0x2a7(%rip),%rdi        # d84 <_IO_stdin_used+0x4>
 add:	48 8d 50 08          	lea    0x8(%rax),%rdx
 ae1:	49 89 c4             	mov    %rax,%r12
 ae4:	48 89 c6             	mov    %rax,%rsi
 ae7:	31 c0                	xor    %eax,%eax
 ae9:	4c 89 e5             	mov    %r12,%rbp
 aec:	e8 ef fc ff ff       	callq  7e0 <__isoc99_scanf@plt>
 af1:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 af6:	75 37                	jne    b2f <creat+0x7f>
 af8:	eb 56                	jmp    b50 <creat+0xa0>
 afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b00:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 b05:	bf 18 00 00 00       	mov    $0x18,%edi
 b0a:	49 89 ec             	mov    %rbp,%r12
 b0d:	e8 9e fc ff ff       	callq  7b0 <malloc@plt>
 b12:	48 8d 50 08          	lea    0x8(%rax),%rdx
 b16:	48 89 c3             	mov    %rax,%rbx
 b19:	48 89 c6             	mov    %rax,%rsi
 b1c:	4c 89 ef             	mov    %r13,%rdi
 b1f:	31 c0                	xor    %eax,%eax
 b21:	e8 ba fc ff ff       	callq  7e0 <__isoc99_scanf@plt>
 b26:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 b2a:	74 24                	je     b50 <creat+0xa0>
 b2c:	48 89 dd             	mov    %rbx,%rbp
 b2f:	8b 05 e7 14 20 00    	mov    0x2014e7(%rip),%eax        # 20201c <n>
 b35:	83 c0 01             	add    $0x1,%eax
 b38:	83 f8 01             	cmp    $0x1,%eax
 b3b:	89 05 db 14 20 00    	mov    %eax,0x2014db(%rip)        # 20201c <n>
 b41:	75 bd                	jne    b00 <creat+0x50>
 b43:	49 89 ee             	mov    %rbp,%r14
 b46:	eb bd                	jmp    b05 <creat+0x55>
 b48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b4f:	00 
 b50:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 b57:	00 
 b58:	4c 89 f0             	mov    %r14,%rax
 b5b:	5b                   	pop    %rbx
 b5c:	5d                   	pop    %rbp
 b5d:	41 5c                	pop    %r12
 b5f:	41 5d                	pop    %r13
 b61:	41 5e                	pop    %r14
 b63:	c3                   	retq   
 b64:	66 90                	xchg   %ax,%ax
 b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b6d:	00 00 00 

0000000000000b70 <insert>:
 b70:	31 c9                	xor    %ecx,%ecx
 b72:	48 85 ff             	test   %rdi,%rdi
 b75:	48 89 f8             	mov    %rdi,%rax
 b78:	75 14                	jne    b8e <insert+0x1e>
 b7a:	eb 54                	jmp    bd0 <insert+0x60>
 b7c:	0f 1f 40 00          	nopl   0x0(%rax)
 b80:	4c 8b 06             	mov    (%rsi),%r8
 b83:	4c 39 00             	cmp    %r8,(%rax)
 b86:	7f 28                	jg     bb0 <insert+0x40>
 b88:	48 89 c1             	mov    %rax,%rcx
 b8b:	48 89 d0             	mov    %rdx,%rax
 b8e:	48 8b 50 10          	mov    0x10(%rax),%rdx
 b92:	48 85 d2             	test   %rdx,%rdx
 b95:	75 e9                	jne    b80 <insert+0x10>
 b97:	48 39 f8             	cmp    %rdi,%rax
 b9a:	75 4c                	jne    be8 <insert+0x78>
 b9c:	48 89 78 10          	mov    %rdi,0x10(%rax)
 ba0:	83 05 75 14 20 00 01 	addl   $0x1,0x201475(%rip)        # 20201c <n>
 ba7:	c3                   	retq   
 ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 baf:	00 
 bb0:	48 39 f8             	cmp    %rdi,%rax
 bb3:	74 e7                	je     b9c <insert+0x2c>
 bb5:	48 89 71 10          	mov    %rsi,0x10(%rcx)
 bb9:	83 05 5c 14 20 00 01 	addl   $0x1,0x20145c(%rip)        # 20201c <n>
 bc0:	48 89 46 10          	mov    %rax,0x10(%rsi)
 bc4:	48 89 f8             	mov    %rdi,%rax
 bc7:	c3                   	retq   
 bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bcf:	00 
 bd0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 bd7:	00 
 bd8:	48 89 f0             	mov    %rsi,%rax
 bdb:	83 05 3a 14 20 00 01 	addl   $0x1,0x20143a(%rip)        # 20201c <n>
 be2:	c3                   	retq   
 be3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 be8:	48 8b 16             	mov    (%rsi),%rdx
 beb:	48 39 10             	cmp    %rdx,(%rax)
 bee:	7f c5                	jg     bb5 <insert+0x45>
 bf0:	48 89 70 10          	mov    %rsi,0x10(%rax)
 bf4:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 bfb:	00 
 bfc:	48 89 f8             	mov    %rdi,%rax
 bff:	eb 9f                	jmp    ba0 <insert+0x30>
 c01:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c0d:	00 00 00 

0000000000000c10 <dell>:
 c10:	31 c0                	xor    %eax,%eax
 c12:	48 85 ff             	test   %rdi,%rdi
 c15:	41 54                	push   %r12
 c17:	49 89 fc             	mov    %rdi,%r12
 c1a:	55                   	push   %rbp
 c1b:	53                   	push   %rbx
 c1c:	48 89 fb             	mov    %rdi,%rbx
 c1f:	75 12                	jne    c33 <dell+0x23>
 c21:	eb 6c                	jmp    c8f <dell+0x7f>
 c23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 c28:	48 85 ed             	test   %rbp,%rbp
 c2b:	48 89 d8             	mov    %rbx,%rax
 c2e:	74 48                	je     c78 <dell+0x68>
 c30:	48 89 eb             	mov    %rbp,%rbx
 c33:	48 8b 13             	mov    (%rbx),%rdx
 c36:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
 c3a:	48 39 f2             	cmp    %rsi,%rdx
 c3d:	75 e9                	jne    c28 <dell+0x18>
 c3f:	4c 39 e3             	cmp    %r12,%rbx
 c42:	74 07                	je     c4b <dell+0x3b>
 c44:	48 89 68 10          	mov    %rbp,0x10(%rax)
 c48:	4c 89 e5             	mov    %r12,%rbp
 c4b:	48 8d 35 46 01 00 00 	lea    0x146(%rip),%rsi        # d98 <_IO_stdin_used+0x18>
 c52:	bf 01 00 00 00       	mov    $0x1,%edi
 c57:	31 c0                	xor    %eax,%eax
 c59:	e8 72 fb ff ff       	callq  7d0 <__printf_chk@plt>
 c5e:	48 89 df             	mov    %rbx,%rdi
 c61:	83 2d b4 13 20 00 01 	subl   $0x1,0x2013b4(%rip)        # 20201c <n>
 c68:	e8 03 fb ff ff       	callq  770 <free@plt>
 c6d:	48 89 e8             	mov    %rbp,%rax
 c70:	5b                   	pop    %rbx
 c71:	5d                   	pop    %rbp
 c72:	41 5c                	pop    %r12
 c74:	c3                   	retq   
 c75:	0f 1f 00             	nopl   (%rax)
 c78:	48 8d 3d 27 01 00 00 	lea    0x127(%rip),%rdi        # da6 <_IO_stdin_used+0x26>
 c7f:	4c 89 e5             	mov    %r12,%rbp
 c82:	e8 f9 fa ff ff       	callq  780 <puts@plt>
 c87:	48 89 e8             	mov    %rbp,%rax
 c8a:	5b                   	pop    %rbx
 c8b:	5d                   	pop    %rbp
 c8c:	41 5c                	pop    %r12
 c8e:	c3                   	retq   
 c8f:	48 8d 3d f5 00 00 00 	lea    0xf5(%rip),%rdi        # d8b <_IO_stdin_used+0xb>
 c96:	31 ed                	xor    %ebp,%ebp
 c98:	e8 e3 fa ff ff       	callq  780 <puts@plt>
 c9d:	eb ce                	jmp    c6d <dell+0x5d>
 c9f:	90                   	nop

0000000000000ca0 <print>:
 ca0:	55                   	push   %rbp
 ca1:	53                   	push   %rbx
 ca2:	48 89 fb             	mov    %rdi,%rbx
 ca5:	48 8d 3d 05 01 00 00 	lea    0x105(%rip),%rdi        # db1 <_IO_stdin_used+0x31>
 cac:	48 8d 2d 0d 01 00 00 	lea    0x10d(%rip),%rbp        # dc0 <_IO_stdin_used+0x40>
 cb3:	48 83 ec 08          	sub    $0x8,%rsp
 cb7:	e8 c4 fa ff ff       	callq  780 <puts@plt>
 cbc:	48 85 db             	test   %rbx,%rbx
 cbf:	74 33                	je     cf4 <print+0x54>
 cc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 cc8:	48 8b 13             	mov    (%rbx),%rdx
 ccb:	48 85 d2             	test   %rdx,%rdx
 cce:	74 24                	je     cf4 <print+0x54>
 cd0:	66 0f ef c0          	pxor   %xmm0,%xmm0
 cd4:	48 89 ee             	mov    %rbp,%rsi
 cd7:	bf 01 00 00 00       	mov    $0x1,%edi
 cdc:	b8 01 00 00 00       	mov    $0x1,%eax
 ce1:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 ce6:	e8 e5 fa ff ff       	callq  7d0 <__printf_chk@plt>
 ceb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 cef:	48 85 db             	test   %rbx,%rbx
 cf2:	75 d4                	jne    cc8 <print+0x28>
 cf4:	48 83 c4 08          	add    $0x8,%rsp
 cf8:	5b                   	pop    %rbx
 cf9:	5d                   	pop    %rbp
 cfa:	c3                   	retq   
 cfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000d00 <__libc_csu_init>:
 d00:	41 57                	push   %r15
 d02:	41 56                	push   %r14
 d04:	49 89 d7             	mov    %rdx,%r15
 d07:	41 55                	push   %r13
 d09:	41 54                	push   %r12
 d0b:	4c 8d 25 6e 10 20 00 	lea    0x20106e(%rip),%r12        # 201d80 <__frame_dummy_init_array_entry>
 d12:	55                   	push   %rbp
 d13:	48 8d 2d 6e 10 20 00 	lea    0x20106e(%rip),%rbp        # 201d88 <__init_array_end>
 d1a:	53                   	push   %rbx
 d1b:	41 89 fd             	mov    %edi,%r13d
 d1e:	49 89 f6             	mov    %rsi,%r14
 d21:	4c 29 e5             	sub    %r12,%rbp
 d24:	48 83 ec 08          	sub    $0x8,%rsp
 d28:	48 c1 fd 03          	sar    $0x3,%rbp
 d2c:	e8 0f fa ff ff       	callq  740 <_init>
 d31:	48 85 ed             	test   %rbp,%rbp
 d34:	74 20                	je     d56 <__libc_csu_init+0x56>
 d36:	31 db                	xor    %ebx,%ebx
 d38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d3f:	00 
 d40:	4c 89 fa             	mov    %r15,%rdx
 d43:	4c 89 f6             	mov    %r14,%rsi
 d46:	44 89 ef             	mov    %r13d,%edi
 d49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d4d:	48 83 c3 01          	add    $0x1,%rbx
 d51:	48 39 dd             	cmp    %rbx,%rbp
 d54:	75 ea                	jne    d40 <__libc_csu_init+0x40>
 d56:	48 83 c4 08          	add    $0x8,%rsp
 d5a:	5b                   	pop    %rbx
 d5b:	5d                   	pop    %rbp
 d5c:	41 5c                	pop    %r12
 d5e:	41 5d                	pop    %r13
 d60:	41 5e                	pop    %r14
 d62:	41 5f                	pop    %r15
 d64:	c3                   	retq   
 d65:	90                   	nop
 d66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d6d:	00 00 00 

0000000000000d70 <__libc_csu_fini>:
 d70:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d74 <_fini>:
 d74:	48 83 ec 08          	sub    $0x8,%rsp
 d78:	48 83 c4 08          	add    $0x8,%rsp
 d7c:	c3                   	retq   
