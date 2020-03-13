
input/19020013049_2.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000000698 <_init>:
 698:	48 83 ec 08          	sub    $0x8,%rsp
 69c:	48 8b 05 45 19 20 00 	mov    0x201945(%rip),%rax        # 201fe8 <__gmon_start__>
 6a3:	48 85 c0             	test   %rax,%rax
 6a6:	74 02                	je     6aa <_init+0x12>
 6a8:	ff d0                	callq  *%rax
 6aa:	48 83 c4 08          	add    $0x8,%rsp
 6ae:	c3                   	retq   

Disassembly of section .plt:

00000000000006b0 <.plt>:
 6b0:	ff 35 e2 18 20 00    	pushq  0x2018e2(%rip)        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x8>
 6b6:	ff 25 e4 18 20 00    	jmpq   *0x2018e4(%rip)        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
 6bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006c0 <puts@plt>:
 6c0:	ff 25 e2 18 20 00    	jmpq   *0x2018e2(%rip)        # 201fa8 <puts@GLIBC_2.2.5>
 6c6:	68 00 00 00 00       	pushq  $0x0
 6cb:	e9 e0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006d0 <__stack_chk_fail@plt>:
 6d0:	ff 25 da 18 20 00    	jmpq   *0x2018da(%rip)        # 201fb0 <__stack_chk_fail@GLIBC_2.4>
 6d6:	68 01 00 00 00       	pushq  $0x1
 6db:	e9 d0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006e0 <malloc@plt>:
 6e0:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 201fb8 <malloc@GLIBC_2.2.5>
 6e6:	68 02 00 00 00       	pushq  $0x2
 6eb:	e9 c0 ff ff ff       	jmpq   6b0 <.plt>

00000000000006f0 <__printf_chk@plt>:
 6f0:	ff 25 ca 18 20 00    	jmpq   *0x2018ca(%rip)        # 201fc0 <__printf_chk@GLIBC_2.3.4>
 6f6:	68 03 00 00 00       	pushq  $0x3
 6fb:	e9 b0 ff ff ff       	jmpq   6b0 <.plt>

0000000000000700 <__isoc99_scanf@plt>:
 700:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 201fc8 <__isoc99_scanf@GLIBC_2.7>
 706:	68 04 00 00 00       	pushq  $0x4
 70b:	e9 a0 ff ff ff       	jmpq   6b0 <.plt>

0000000000000710 <exit@plt>:
 710:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 201fd0 <exit@GLIBC_2.2.5>
 716:	68 05 00 00 00       	pushq  $0x5
 71b:	e9 90 ff ff ff       	jmpq   6b0 <.plt>

Disassembly of section .plt.got:

0000000000000720 <__cxa_finalize@plt>:
 720:	ff 25 d2 18 20 00    	jmpq   *0x2018d2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 726:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000730 <main>:
 730:	41 55                	push   %r13
 732:	41 54                	push   %r12
 734:	48 8d 3d 25 06 00 00 	lea    0x625(%rip),%rdi        # d60 <_IO_stdin_used+0x60>
 73b:	55                   	push   %rbp
 73c:	53                   	push   %rbx
 73d:	48 83 ec 28          	sub    $0x28,%rsp
 741:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 748:	00 00 
 74a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 74f:	31 c0                	xor    %eax,%eax
 751:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
 756:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
 75b:	e8 60 ff ff ff       	callq  6c0 <puts@plt>
 760:	31 c0                	xor    %eax,%eax
 762:	e8 d9 02 00 00       	callq  a40 <creat>
 767:	48 89 c7             	mov    %rax,%rdi
 76a:	48 89 c3             	mov    %rax,%rbx
 76d:	e8 8e 03 00 00       	callq  b00 <print>
 772:	48 8d 35 37 06 00 00 	lea    0x637(%rip),%rsi        # db0 <_IO_stdin_used+0xb0>
 779:	bf 01 00 00 00       	mov    $0x1,%edi
 77e:	31 c0                	xor    %eax,%eax
 780:	e8 6b ff ff ff       	callq  6f0 <__printf_chk@plt>
 785:	48 8d 35 e3 05 00 00 	lea    0x5e3(%rip),%rsi        # d6f <_IO_stdin_used+0x6f>
 78c:	bf 01 00 00 00       	mov    $0x1,%edi
 791:	31 c0                	xor    %eax,%eax
 793:	e8 58 ff ff ff       	callq  6f0 <__printf_chk@plt>
 798:	48 8d 3d d9 05 00 00 	lea    0x5d9(%rip),%rdi        # d78 <_IO_stdin_used+0x78>
 79f:	31 c0                	xor    %eax,%eax
 7a1:	48 89 ee             	mov    %rbp,%rsi
 7a4:	e8 57 ff ff ff       	callq  700 <__isoc99_scanf@plt>
 7a9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 7ad:	83 f8 01             	cmp    $0x1,%eax
 7b0:	74 7e                	je     830 <main+0x100>
 7b2:	83 f8 02             	cmp    $0x2,%eax
 7b5:	74 11                	je     7c8 <main+0x98>
 7b7:	85 c0                	test   %eax,%eax
 7b9:	75 b7                	jne    772 <main+0x42>
 7bb:	31 ff                	xor    %edi,%edi
 7bd:	e8 4e ff ff ff       	callq  710 <exit@plt>
 7c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 7c8:	48 8d 35 ce 05 00 00 	lea    0x5ce(%rip),%rsi        # d9d <_IO_stdin_used+0x9d>
 7cf:	bf 01 00 00 00       	mov    $0x1,%edi
 7d4:	31 c0                	xor    %eax,%eax
 7d6:	e8 15 ff ff ff       	callq  6f0 <__printf_chk@plt>
 7db:	48 8d 3d c8 05 00 00 	lea    0x5c8(%rip),%rdi        # daa <_IO_stdin_used+0xaa>
 7e2:	4c 89 ee             	mov    %r13,%rsi
 7e5:	31 c0                	xor    %eax,%eax
 7e7:	e8 14 ff ff ff       	callq  700 <__isoc99_scanf@plt>
 7ec:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
 7f1:	48 89 df             	mov    %rbx,%rdi
 7f4:	e8 e7 03 00 00       	callq  be0 <delect>
 7f9:	48 89 c7             	mov    %rax,%rdi
 7fc:	48 89 c3             	mov    %rax,%rbx
 7ff:	e8 fc 02 00 00       	callq  b00 <print>
 804:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 808:	85 c0                	test   %eax,%eax
 80a:	0f 85 62 ff ff ff    	jne    772 <main+0x42>
 810:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 815:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 81c:	00 00 
 81e:	75 7b                	jne    89b <main+0x16b>
 820:	48 83 c4 28          	add    $0x28,%rsp
 824:	5b                   	pop    %rbx
 825:	5d                   	pop    %rbp
 826:	41 5c                	pop    %r12
 828:	41 5d                	pop    %r13
 82a:	c3                   	retq   
 82b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 830:	48 8d 35 44 05 00 00 	lea    0x544(%rip),%rsi        # d7b <_IO_stdin_used+0x7b>
 837:	bf 01 00 00 00       	mov    $0x1,%edi
 83c:	31 c0                	xor    %eax,%eax
 83e:	e8 ad fe ff ff       	callq  6f0 <__printf_chk@plt>
 843:	bf 18 00 00 00       	mov    $0x18,%edi
 848:	e8 93 fe ff ff       	callq  6e0 <malloc@plt>
 84d:	48 8d 3d b0 04 00 00 	lea    0x4b0(%rip),%rdi        # d04 <_IO_stdin_used+0x4>
 854:	48 8d 50 08          	lea    0x8(%rax),%rdx
 858:	49 89 c4             	mov    %rax,%r12
 85b:	48 89 c6             	mov    %rax,%rsi
 85e:	31 c0                	xor    %eax,%eax
 860:	e8 9b fe ff ff       	callq  700 <__isoc99_scanf@plt>
 865:	48 89 df             	mov    %rbx,%rdi
 868:	4c 89 e6             	mov    %r12,%rsi
 86b:	e8 f0 02 00 00       	callq  b60 <insert>
 870:	49 8b 14 24          	mov    (%r12),%rdx
 874:	48 8d 35 13 05 00 00 	lea    0x513(%rip),%rsi        # d8e <_IO_stdin_used+0x8e>
 87b:	48 89 c3             	mov    %rax,%rbx
 87e:	bf 01 00 00 00       	mov    $0x1,%edi
 883:	31 c0                	xor    %eax,%eax
 885:	e8 66 fe ff ff       	callq  6f0 <__printf_chk@plt>
 88a:	48 89 df             	mov    %rbx,%rdi
 88d:	e8 6e 02 00 00       	callq  b00 <print>
 892:	8b 44 24 0c          	mov    0xc(%rsp),%eax
 896:	e9 6d ff ff ff       	jmpq   808 <main+0xd8>
 89b:	e8 30 fe ff ff       	callq  6d0 <__stack_chk_fail@plt>

00000000000008a0 <_start>:
 8a0:	31 ed                	xor    %ebp,%ebp
 8a2:	49 89 d1             	mov    %rdx,%r9
 8a5:	5e                   	pop    %rsi
 8a6:	48 89 e2             	mov    %rsp,%rdx
 8a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8ad:	50                   	push   %rax
 8ae:	54                   	push   %rsp
 8af:	4c 8d 05 3a 04 00 00 	lea    0x43a(%rip),%r8        # cf0 <__libc_csu_fini>
 8b6:	48 8d 0d c3 03 00 00 	lea    0x3c3(%rip),%rcx        # c80 <__libc_csu_init>
 8bd:	48 8d 3d 6c fe ff ff 	lea    -0x194(%rip),%rdi        # 730 <main>
 8c4:	ff 15 16 17 20 00    	callq  *0x201716(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8ca:	f4                   	hlt    
 8cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008d0 <deregister_tm_clones>:
 8d0:	48 8d 3d 39 17 20 00 	lea    0x201739(%rip),%rdi        # 202010 <__TMC_END__>
 8d7:	55                   	push   %rbp
 8d8:	48 8d 05 31 17 20 00 	lea    0x201731(%rip),%rax        # 202010 <__TMC_END__>
 8df:	48 39 f8             	cmp    %rdi,%rax
 8e2:	48 89 e5             	mov    %rsp,%rbp
 8e5:	74 19                	je     900 <deregister_tm_clones+0x30>
 8e7:	48 8b 05 ea 16 20 00 	mov    0x2016ea(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8ee:	48 85 c0             	test   %rax,%rax
 8f1:	74 0d                	je     900 <deregister_tm_clones+0x30>
 8f3:	5d                   	pop    %rbp
 8f4:	ff e0                	jmpq   *%rax
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 
 900:	5d                   	pop    %rbp
 901:	c3                   	retq   
 902:	0f 1f 40 00          	nopl   0x0(%rax)
 906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 90d:	00 00 00 

0000000000000910 <register_tm_clones>:
 910:	48 8d 3d f9 16 20 00 	lea    0x2016f9(%rip),%rdi        # 202010 <__TMC_END__>
 917:	48 8d 35 f2 16 20 00 	lea    0x2016f2(%rip),%rsi        # 202010 <__TMC_END__>
 91e:	55                   	push   %rbp
 91f:	48 29 fe             	sub    %rdi,%rsi
 922:	48 89 e5             	mov    %rsp,%rbp
 925:	48 c1 fe 03          	sar    $0x3,%rsi
 929:	48 89 f0             	mov    %rsi,%rax
 92c:	48 c1 e8 3f          	shr    $0x3f,%rax
 930:	48 01 c6             	add    %rax,%rsi
 933:	48 d1 fe             	sar    %rsi
 936:	74 18                	je     950 <register_tm_clones+0x40>
 938:	48 8b 05 b1 16 20 00 	mov    0x2016b1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 93f:	48 85 c0             	test   %rax,%rax
 942:	74 0c                	je     950 <register_tm_clones+0x40>
 944:	5d                   	pop    %rbp
 945:	ff e0                	jmpq   *%rax
 947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 94e:	00 00 
 950:	5d                   	pop    %rbp
 951:	c3                   	retq   
 952:	0f 1f 40 00          	nopl   0x0(%rax)
 956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 95d:	00 00 00 

0000000000000960 <__do_global_dtors_aux>:
 960:	80 3d a9 16 20 00 00 	cmpb   $0x0,0x2016a9(%rip)        # 202010 <__TMC_END__>
 967:	75 2f                	jne    998 <__do_global_dtors_aux+0x38>
 969:	48 83 3d 87 16 20 00 	cmpq   $0x0,0x201687(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 970:	00 
 971:	55                   	push   %rbp
 972:	48 89 e5             	mov    %rsp,%rbp
 975:	74 0c                	je     983 <__do_global_dtors_aux+0x23>
 977:	48 8b 3d 8a 16 20 00 	mov    0x20168a(%rip),%rdi        # 202008 <__dso_handle>
 97e:	e8 9d fd ff ff       	callq  720 <__cxa_finalize@plt>
 983:	e8 48 ff ff ff       	callq  8d0 <deregister_tm_clones>
 988:	c6 05 81 16 20 00 01 	movb   $0x1,0x201681(%rip)        # 202010 <__TMC_END__>
 98f:	5d                   	pop    %rbp
 990:	c3                   	retq   
 991:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 998:	f3 c3                	repz retq 
 99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009a0 <frame_dummy>:
 9a0:	55                   	push   %rbp
 9a1:	48 89 e5             	mov    %rsp,%rbp
 9a4:	5d                   	pop    %rbp
 9a5:	e9 66 ff ff ff       	jmpq   910 <register_tm_clones>
 9aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009b0 <order>:
 9b0:	48 85 ff             	test   %rdi,%rdi
 9b3:	48 89 fa             	mov    %rdi,%rdx
 9b6:	74 69                	je     a21 <order+0x71>
 9b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 9bf:	00 
 9c0:	48 8b 42 10          	mov    0x10(%rdx),%rax
 9c4:	48 85 c0             	test   %rax,%rax
 9c7:	74 67                	je     a30 <order+0x80>
 9c9:	48 89 c6             	mov    %rax,%rsi
 9cc:	eb 0b                	jmp    9d9 <order+0x29>
 9ce:	66 90                	xchg   %ax,%ax
 9d0:	48 8b 40 10          	mov    0x10(%rax),%rax
 9d4:	48 85 c0             	test   %rax,%rax
 9d7:	74 40                	je     a19 <order+0x69>
 9d9:	48 8b 0a             	mov    (%rdx),%rcx
 9dc:	48 3b 08             	cmp    (%rax),%rcx
 9df:	7e ef                	jle    9d0 <order+0x20>
 9e1:	f3 0f 6f 08          	movdqu (%rax),%xmm1
 9e5:	f3 0f 10 42 08       	movss  0x8(%rdx),%xmm0
 9ea:	0f 11 0a             	movups %xmm1,(%rdx)
 9ed:	4c 8b 40 10          	mov    0x10(%rax),%r8
 9f1:	4c 89 42 10          	mov    %r8,0x10(%rdx)
 9f5:	48 89 70 10          	mov    %rsi,0x10(%rax)
 9f9:	f3 0f 11 40 08       	movss  %xmm0,0x8(%rax)
 9fe:	48 89 08             	mov    %rcx,(%rax)
 a01:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
 a05:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 a09:	48 89 48 10          	mov    %rcx,0x10(%rax)
 a0d:	48 89 c8             	mov    %rcx,%rax
 a10:	48 8b 72 10          	mov    0x10(%rdx),%rsi
 a14:	48 85 c0             	test   %rax,%rax
 a17:	75 c0                	jne    9d9 <order+0x29>
 a19:	48 89 f2             	mov    %rsi,%rdx
 a1c:	48 85 ff             	test   %rdi,%rdi
 a1f:	75 9f                	jne    9c0 <order+0x10>
 a21:	48 8b 04 25 10 00 00 	mov    0x10,%rax
 a28:	00 
 a29:	0f 0b                	ud2    
 a2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a30:	31 f6                	xor    %esi,%esi
 a32:	48 89 f2             	mov    %rsi,%rdx
 a35:	eb e5                	jmp    a1c <order+0x6c>
 a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a3e:	00 00 

0000000000000a40 <creat>:
 a40:	41 56                	push   %r14
 a42:	41 55                	push   %r13
 a44:	bf 18 00 00 00       	mov    $0x18,%edi
 a49:	41 54                	push   %r12
 a4b:	55                   	push   %rbp
 a4c:	45 31 f6             	xor    %r14d,%r14d
 a4f:	53                   	push   %rbx
 a50:	c7 05 ba 15 20 00 00 	movl   $0x0,0x2015ba(%rip)        # 202014 <n>
 a57:	00 00 00 
 a5a:	4c 8d 2d a3 02 00 00 	lea    0x2a3(%rip),%r13        # d04 <_IO_stdin_used+0x4>
 a61:	e8 7a fc ff ff       	callq  6e0 <malloc@plt>
 a66:	48 8d 3d 97 02 00 00 	lea    0x297(%rip),%rdi        # d04 <_IO_stdin_used+0x4>
 a6d:	48 8d 50 08          	lea    0x8(%rax),%rdx
 a71:	49 89 c4             	mov    %rax,%r12
 a74:	48 89 c6             	mov    %rax,%rsi
 a77:	31 c0                	xor    %eax,%eax
 a79:	4c 89 e5             	mov    %r12,%rbp
 a7c:	e8 7f fc ff ff       	callq  700 <__isoc99_scanf@plt>
 a81:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
 a86:	75 37                	jne    abf <creat+0x7f>
 a88:	eb 56                	jmp    ae0 <creat+0xa0>
 a8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a90:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
 a95:	bf 18 00 00 00       	mov    $0x18,%edi
 a9a:	49 89 ec             	mov    %rbp,%r12
 a9d:	e8 3e fc ff ff       	callq  6e0 <malloc@plt>
 aa2:	48 8d 50 08          	lea    0x8(%rax),%rdx
 aa6:	48 89 c3             	mov    %rax,%rbx
 aa9:	48 89 c6             	mov    %rax,%rsi
 aac:	4c 89 ef             	mov    %r13,%rdi
 aaf:	31 c0                	xor    %eax,%eax
 ab1:	e8 4a fc ff ff       	callq  700 <__isoc99_scanf@plt>
 ab6:	48 83 3b 00          	cmpq   $0x0,(%rbx)
 aba:	74 24                	je     ae0 <creat+0xa0>
 abc:	48 89 dd             	mov    %rbx,%rbp
 abf:	8b 05 4f 15 20 00    	mov    0x20154f(%rip),%eax        # 202014 <n>
 ac5:	83 c0 01             	add    $0x1,%eax
 ac8:	83 f8 01             	cmp    $0x1,%eax
 acb:	89 05 43 15 20 00    	mov    %eax,0x201543(%rip)        # 202014 <n>
 ad1:	75 bd                	jne    a90 <creat+0x50>
 ad3:	49 89 ee             	mov    %rbp,%r14
 ad6:	eb bd                	jmp    a95 <creat+0x55>
 ad8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 adf:	00 
 ae0:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
 ae7:	00 
 ae8:	4c 89 f0             	mov    %r14,%rax
 aeb:	5b                   	pop    %rbx
 aec:	5d                   	pop    %rbp
 aed:	41 5c                	pop    %r12
 aef:	41 5d                	pop    %r13
 af1:	41 5e                	pop    %r14
 af3:	c3                   	retq   
 af4:	66 90                	xchg   %ax,%ax
 af6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 afd:	00 00 00 

0000000000000b00 <print>:
 b00:	55                   	push   %rbp
 b01:	53                   	push   %rbx
 b02:	48 8d 35 02 02 00 00 	lea    0x202(%rip),%rsi        # d0b <_IO_stdin_used+0xb>
 b09:	48 89 fb             	mov    %rdi,%rbx
 b0c:	31 c0                	xor    %eax,%eax
 b0e:	bf 01 00 00 00       	mov    $0x1,%edi
 b13:	48 83 ec 08          	sub    $0x8,%rsp
 b17:	8b 15 f7 14 20 00    	mov    0x2014f7(%rip),%edx        # 202014 <n>
 b1d:	e8 ce fb ff ff       	callq  6f0 <__printf_chk@plt>
 b22:	48 85 db             	test   %rbx,%rbx
 b25:	74 30                	je     b57 <print+0x57>
 b27:	48 8d 2d fa 01 00 00 	lea    0x1fa(%rip),%rbp        # d28 <_IO_stdin_used+0x28>
 b2e:	66 90                	xchg   %ax,%ax
 b30:	66 0f ef c0          	pxor   %xmm0,%xmm0
 b34:	48 8b 13             	mov    (%rbx),%rdx
 b37:	48 89 ee             	mov    %rbp,%rsi
 b3a:	bf 01 00 00 00       	mov    $0x1,%edi
 b3f:	b8 01 00 00 00       	mov    $0x1,%eax
 b44:	f3 0f 5a 43 08       	cvtss2sd 0x8(%rbx),%xmm0
 b49:	e8 a2 fb ff ff       	callq  6f0 <__printf_chk@plt>
 b4e:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
 b52:	48 85 db             	test   %rbx,%rbx
 b55:	75 d9                	jne    b30 <print+0x30>
 b57:	48 83 c4 08          	add    $0x8,%rsp
 b5b:	5b                   	pop    %rbx
 b5c:	5d                   	pop    %rbp
 b5d:	c3                   	retq   
 b5e:	66 90                	xchg   %ax,%ax

0000000000000b60 <insert>:
 b60:	48 85 ff             	test   %rdi,%rdi
 b63:	74 5b                	je     bc0 <insert+0x60>
 b65:	48 8b 0e             	mov    (%rsi),%rcx
 b68:	48 89 fa             	mov    %rdi,%rdx
 b6b:	eb 12                	jmp    b7f <insert+0x1f>
 b6d:	0f 1f 00             	nopl   (%rax)
 b70:	48 8b 42 10          	mov    0x10(%rdx),%rax
 b74:	49 89 d0             	mov    %rdx,%r8
 b77:	48 85 c0             	test   %rax,%rax
 b7a:	74 24                	je     ba0 <insert+0x40>
 b7c:	48 89 c2             	mov    %rax,%rdx
 b7f:	48 3b 0a             	cmp    (%rdx),%rcx
 b82:	7f ec                	jg     b70 <insert+0x10>
 b84:	48 39 fa             	cmp    %rdi,%rdx
 b87:	48 89 f0             	mov    %rsi,%rax
 b8a:	74 07                	je     b93 <insert+0x33>
 b8c:	49 89 70 10          	mov    %rsi,0x10(%r8)
 b90:	48 89 f8             	mov    %rdi,%rax
 b93:	48 89 56 10          	mov    %rdx,0x10(%rsi)
 b97:	83 05 76 14 20 00 01 	addl   $0x1,0x201476(%rip)        # 202014 <n>
 b9e:	c3                   	retq   
 b9f:	90                   	nop
 ba0:	48 89 72 10          	mov    %rsi,0x10(%rdx)
 ba4:	48 89 f8             	mov    %rdi,%rax
 ba7:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 bae:	00 
 baf:	83 05 5e 14 20 00 01 	addl   $0x1,0x20145e(%rip)        # 202014 <n>
 bb6:	c3                   	retq   
 bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 bbe:	00 00 
 bc0:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
 bc7:	00 
 bc8:	48 8b 04 25 00 00 00 	mov    0x0,%rax
 bcf:	00 
 bd0:	0f 0b                	ud2    
 bd2:	0f 1f 40 00          	nopl   0x0(%rax)
 bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bdd:	00 00 00 

0000000000000be0 <delect>:
 be0:	55                   	push   %rbp
 be1:	53                   	push   %rbx
 be2:	48 89 fd             	mov    %rdi,%rbp
 be5:	48 89 f8             	mov    %rdi,%rax
 be8:	48 83 ec 08          	sub    $0x8,%rsp
 bec:	48 85 ff             	test   %rdi,%rdi
 bef:	75 12                	jne    c03 <delect+0x23>
 bf1:	eb 70                	jmp    c63 <delect+0x83>
 bf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 bf8:	48 85 db             	test   %rbx,%rbx
 bfb:	48 89 c1             	mov    %rax,%rcx
 bfe:	74 40                	je     c40 <delect+0x60>
 c00:	48 89 d8             	mov    %rbx,%rax
 c03:	48 8b 10             	mov    (%rax),%rdx
 c06:	48 8b 58 10          	mov    0x10(%rax),%rbx
 c0a:	48 39 f2             	cmp    %rsi,%rdx
 c0d:	75 e9                	jne    bf8 <delect+0x18>
 c0f:	48 39 e8             	cmp    %rbp,%rax
 c12:	74 07                	je     c1b <delect+0x3b>
 c14:	48 89 59 10          	mov    %rbx,0x10(%rcx)
 c18:	48 89 eb             	mov    %rbp,%rbx
 c1b:	48 8d 35 1d 01 00 00 	lea    0x11d(%rip),%rsi        # d3f <_IO_stdin_used+0x3f>
 c22:	bf 01 00 00 00       	mov    $0x1,%edi
 c27:	31 c0                	xor    %eax,%eax
 c29:	e8 c2 fa ff ff       	callq  6f0 <__printf_chk@plt>
 c2e:	83 2d df 13 20 00 01 	subl   $0x1,0x2013df(%rip)        # 202014 <n>
 c35:	48 83 c4 08          	add    $0x8,%rsp
 c39:	48 89 d8             	mov    %rbx,%rax
 c3c:	5b                   	pop    %rbx
 c3d:	5d                   	pop    %rbp
 c3e:	c3                   	retq   
 c3f:	90                   	nop
 c40:	48 89 f2             	mov    %rsi,%rdx
 c43:	48 8d 35 01 01 00 00 	lea    0x101(%rip),%rsi        # d4b <_IO_stdin_used+0x4b>
 c4a:	bf 01 00 00 00       	mov    $0x1,%edi
 c4f:	31 c0                	xor    %eax,%eax
 c51:	48 89 eb             	mov    %rbp,%rbx
 c54:	e8 97 fa ff ff       	callq  6f0 <__printf_chk@plt>
 c59:	48 83 c4 08          	add    $0x8,%rsp
 c5d:	48 89 d8             	mov    %rbx,%rax
 c60:	5b                   	pop    %rbx
 c61:	5d                   	pop    %rbp
 c62:	c3                   	retq   
 c63:	48 8d 3d c9 00 00 00 	lea    0xc9(%rip),%rdi        # d33 <_IO_stdin_used+0x33>
 c6a:	31 db                	xor    %ebx,%ebx
 c6c:	e8 4f fa ff ff       	callq  6c0 <puts@plt>
 c71:	eb c2                	jmp    c35 <delect+0x55>
 c73:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c7a:	00 00 00 
 c7d:	0f 1f 00             	nopl   (%rax)

0000000000000c80 <__libc_csu_init>:
 c80:	41 57                	push   %r15
 c82:	41 56                	push   %r14
 c84:	49 89 d7             	mov    %rdx,%r15
 c87:	41 55                	push   %r13
 c89:	41 54                	push   %r12
 c8b:	4c 8d 25 fe 10 20 00 	lea    0x2010fe(%rip),%r12        # 201d90 <__frame_dummy_init_array_entry>
 c92:	55                   	push   %rbp
 c93:	48 8d 2d fe 10 20 00 	lea    0x2010fe(%rip),%rbp        # 201d98 <__init_array_end>
 c9a:	53                   	push   %rbx
 c9b:	41 89 fd             	mov    %edi,%r13d
 c9e:	49 89 f6             	mov    %rsi,%r14
 ca1:	4c 29 e5             	sub    %r12,%rbp
 ca4:	48 83 ec 08          	sub    $0x8,%rsp
 ca8:	48 c1 fd 03          	sar    $0x3,%rbp
 cac:	e8 e7 f9 ff ff       	callq  698 <_init>
 cb1:	48 85 ed             	test   %rbp,%rbp
 cb4:	74 20                	je     cd6 <__libc_csu_init+0x56>
 cb6:	31 db                	xor    %ebx,%ebx
 cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 cbf:	00 
 cc0:	4c 89 fa             	mov    %r15,%rdx
 cc3:	4c 89 f6             	mov    %r14,%rsi
 cc6:	44 89 ef             	mov    %r13d,%edi
 cc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 ccd:	48 83 c3 01          	add    $0x1,%rbx
 cd1:	48 39 dd             	cmp    %rbx,%rbp
 cd4:	75 ea                	jne    cc0 <__libc_csu_init+0x40>
 cd6:	48 83 c4 08          	add    $0x8,%rsp
 cda:	5b                   	pop    %rbx
 cdb:	5d                   	pop    %rbp
 cdc:	41 5c                	pop    %r12
 cde:	41 5d                	pop    %r13
 ce0:	41 5e                	pop    %r14
 ce2:	41 5f                	pop    %r15
 ce4:	c3                   	retq   
 ce5:	90                   	nop
 ce6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ced:	00 00 00 

0000000000000cf0 <__libc_csu_fini>:
 cf0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cf4 <_fini>:
 cf4:	48 83 ec 08          	sub    $0x8,%rsp
 cf8:	48 83 c4 08          	add    $0x8,%rsp
 cfc:	c3                   	retq   
